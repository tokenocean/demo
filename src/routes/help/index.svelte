<script context="module">
  export const prerender = true;
</script>

<script>
  import branding from "$lib/branding";
</script>

<div class="container mx-auto sm:justify-between mt-10 md:mt-20">
  <div class="mx-auto">
    <h2 class="mb-10">FAQ</h2>
    <div class="faq-content">
      <div class="faq">
        <h3>What is bitcoin?</h3>
        <p>
          Bitcoin is a peer-to-peer, decentralized, and censorship resistant
          electronic cash system. It allows for immutable payments and assets
          that are stored on the blockchain ledger. It is the first system to
          successfully implement digital scarcity and is rapidly changing the
          world with it's many use cases.
        </p>

        <h3>What's an NFT?</h3>

        <p>
          An NFT otherwise known as a Non-Fungible Token, is a digital asset
          that is minted on a blockchain. It's ownership can be
          cryptographically verified and it can be traded for value. Anything in
          the physical or digital world can become an NFT. {branding.projectName}
          uses the bitcoin blockchain and Liquid Network to mint NFTs, making digital
          real estate possible.
        </p>

        <h3>What is a digital deed?</h3>

        <p>
          Owning a digital deed means minting and holding an NFT for a {branding.nftItemName}.
          You can then list your {branding.nftItemName} for sale on the {branding.projectName}
          marketplace and choose to sell it if you find a suitable buyer.
        </p>

        <h3>How do I use them?</h3>

        <p>
          NFT’s can be issued on different blockchains and networks. On {branding.projectName},
          they're created on the Liquid network and can be stored in any wallet
          that supports Liquid assets. {branding.projectName} offers a free built-in
          web wallet that gets used by default.
        </p>

        <h3>How are they created?</h3>

        <p>
          When a {branding.nftItemName} owner first uploads an image or video file for their
          {branding.nftItemName}, the file is added to the IPFS network and assigned a hash
          number that uniquely identifies the contents of the file. The owner's {branding.projectName}
          wallet will then generate a Liquid asset issuance transaction containing
          the title of the {branding.nftItemName} and its hash and broadcast it to be permanently
          recorded on the Liquid blockchain.
        </p>

        <h3>Who can list their {branding.nftItemName} here?</h3>

        <p>
          Anyone can list a {branding.nftItemName} on our platform. Your application will be
          reviewed by our team and we'll reach out to let you know if you’ve
          been accepted.
        </p>

        <h3>
          What’s different about {branding.projectName} compared to other NFT platforms?
        </h3>

        <p>
          {branding.projectName} is the first NFT platform that uses the Bitcoin
          Liquid Network instead of Ethereum or Counterparty. The Liquid network
          is a bitcoin sidechain where transaction fees are denominated in L-BTC,
          Liquid Bitcoin, which is pegged 1:1 to bitcoin.<br /><br />
          Transaction fees on Liquid are orders of magnitude cheaper than on the
          bitcoin or ethereum networks. Liquid also supports native asset issuance
          and atomic swaps which make it possible for people who don't know or trust
          each other to exchange their different tokens and assets directly in a
          single transaction without needing to go through a trusted 3rd party escrow
          agent.
        </p>

        <h3>How do I get some L-BTC?</h3>

        <p>
          Watch <a
            href="https://www.youtube.com/watch?v=LxY3oxLQhA8"
            target="_blank">this video tutorial</a
          >
          to learn how to use the Side Swap mobile app to turn BTC into L-BTC so
          you can bid on art listed on {branding.projectName}. There are many
          other ways to aquire L-BTC as well.
        </p>
      </div>
      <div class="contact boxShadow">
        <p>Need more help?</p>
        <ul>
          <li>
            <a
              href={branding.urls.external.discord}
              target="_blank"
              rel="noreferrer">Chat with support</a
            >
          </li>
          <li>
            <a
              href="mailto:{branding.emails.support}"
              target="_blank"
              rel="noreferrer">Email support</a
            >
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>

<style>
  h3 {
    @apply mt-8;
  }
  p,
  h3 {
    @apply mb-4;
  }

  .faq-content {
    display: flex;
  }

  .faq-content p {
    margin-bottom: 80px;
  }

  .contact {
    height: 200px;
    width: 800px;
    padding: 30px;
    margin-left: 50px;
  }
  .contact p {
    margin-bottom: 30px;
    font-size: 22px;
    border-radius: 10px;
  }
  .contact h5 {
    margin-bottom: 10px;
  }

  .contact a,
  .faq a {
    color: #52b9ff;
  }

  @media only screen and (max-width: 1023px) {
    h3 {
      font-weight: bold;
    }
    .faq-content {
      flex-wrap: wrap;
    }
    .contact {
      width: 100%;
      margin: 30px 0;
    }
  }
</style>
