## Running a private Ethereum Network using Geth

### Proof Of Authority Consensus

1. Create directories for the 3 nodes  
    `mkdir anuja vishnu sourabh`

2. Create an account in each of the node directories:
   ```
   //for anuja
   geth --datadir anuja account new 
   echo "ACCOUNT_PASSWORD" >> anuja/password.txt

   //for vishnu
   geth --datadir vishnu account new 
   echo "ACCOUNT_PASSWORD" >> vishnu/password.txt

   //for sourabh
   geth --datadir sourabh account new 
   echo "ACCOUNT_PASSWORD" >> sourabh/password.txt
   ```
3. Create genesis file using puppeth:
    ```
    puppeth
    3.01. Provide the network name: ethpoa
    3.02. Select option 2: Configure new genesis
    3.03. Select option 1: Create new genesis from scratch
    3.04. Select option 2: Clique - proof-of-authority
    3.05. How many seconds should blocks take? (default = 15) : press enter
    3.06. Provide the address of anuja and vishnu
    3.07. Which accounts should be pre-funded? 
        - enther both addresses
    3.08. Should the precompile-addresses (0x1 .. 0xff) be pre-funded with 1 wei? (advisable yes)
    3.09. Specify your chain/network; (press enter for default)
    3.10. Select option 2. Manage existing genesis
    3.11. Select option 2. Export genesis configurations
    3.12. close the terminal
    ```
4. Initialize the blockchain in node directories:
    ```
    geth --datadir anuja/ init ethpoa.json
    geth --datadir vishnu/ init ethpoa.json
    geth --datadir sourabh/ init ethpoa.json
    ```
5. Launch node1, node2 & node3:
   ```shell
   geth --datadir "anuja" --port "30311" --http --http.addr "127.0.0.1" --http.port "8501" --authrpc.port "8552" --http.api "personal,eth,net,web3,txpool,miner" --networkid <networkId> --miner.gasprice "0" --allow-insecure-unlock --unlock "<account address>" --password anuja/password.txt --mine

    geth --datadir "vishnu" --port "30312" --http --http.addr "127.0.0.1" --http.port "8502" --authrpc.port "8553" --http.api "personal,eth,net,web3,txpool,miner" --networkid <networkId> --miner.gasprice "0" --allow-insecure-unlock --unlock "<account address>" --password vishnu/password.txt --mine

    geth --datadir "sourabh" --port "30313" --http --http.addr "127.0.0.1" --http.port "8503" --authrpc.port "8554" --http.api "personal,eth,net,web3,txpool,miner" --networkid <networkId> --miner.gasprice "0" --allow-insecure-unlock --unlock "<account address>" --password sourabh/password.txt --mine
   ```
6. close the node of anuja and vishnu
7. copy the enode address of sourabh node and restart the node of anuja and vishnu
    ```shell
    geth --datadir "anuja" --port "30311" --bootnodes "<enode of sourabh>" --http --http.addr "127.0.0.1" --http.port "8501" --authrpc.port "8552" --http.api "personal,eth,net,web3,txpool,miner" --networkid <networkId> --miner.gasprice "0" --allow-insecure-unlock --unlock "<account address>" --password anuja/password.txt --mine

    geth --datadir "vishnu" --port "30312" --bootnodes "<enode of sourabh>" --http --http.addr "127.0.0.1" --http.port "8502" --authrpc.port "8553" --http.api "personal,eth,net,web3,txpool,miner" --networkid <networkId> --miner.gasprice "0" --allow-insecure-unlock --unlock "<account address>" --password vishnu/password.txt --mine
    ```
8. Open geth console for all nodes on a separate terminal
    ```shell
    geth attch anuja/geth.ipc
    geth attch vishnu/geth.ipc
    geth attch sourabh/geth.ipc  
    ```
10. Execute the following command from attached geth console
    ```javascript
    eth.blockNumber
    net.peerCount
    admin.peers
    admin.nodeInfo
    eth.getBalance(<account address>);
    eth.sendTransaction({
        to: <account address of other user>,
        from: eth.accounts[0];
        value: 100
    })
    eth.getBalance(<account address>);
    ```
