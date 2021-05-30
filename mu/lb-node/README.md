## Load Balancer node

Fn node type defined by `FN_NODE_TYPE=lb`, this is a type of Fn node that balances the workload among Fn runner nodes.
This type of node act as a gateway to invoke downstream runners. As a consequence, the configuration requires additional configurations
   You can either use `FN_RUNNER_ADDRESSES` with a list of comma separates IP:PORT
   or, if you run K8s, let a watcher to it for you: use the variable `FN_RUNNER_K8S_HEADLESS_SERVICE` and set it to the name of the headless service to watch


   https://kemptechnologies.com/load-balancer/load-balancing-algorithms-techniques/
   