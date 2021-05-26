## Load Balancer node

Fn node type defined by `FN_NODE_TYPE=lb`, this is a type of Fn node that balances the workload among Fn runner nodes.
This type of node act as a gateway to invoke downstream runners. As a consequence, the configuration requires an additional configuration: `FN_RUNNER_ADDRESSES`