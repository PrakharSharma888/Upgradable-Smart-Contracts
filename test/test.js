const { expect } = require('chai')
const { ethers } = require('hardhat')
const { hre } = require('hardhat')

describe("ERC721 Upgradeable Smart Contract", function (){
    it("Should upgrade the ERC721 Smart contract to a new one!", async()=>{
        const UNFT = await ethers.getContractFactory('UNFT')
        const UNFT2 = await ethers.getContractFactory("UNFT2")

        const [owner] = await ethers.getSigners()

        const proxyContract = await hre.upgrades.deployProxy( UNFT, {
            kind: "uups"
        })

        const ownerToken1 = await proxyContract.ownerOf(1)
        expect(ownerToken1).to.equal(owner.address)

        const newProxyContract = await hre.upgrades.upgradeProxy(proxyContract, UNFT2)
        expect(await newProxyContract.test()).to.equal("upgraded")
    })
})