## API node

Fn node type defined by `FN_NODE_TYPE=api`, this is a type of Fn node that manages the lifecycle of Apps/Functions/Triggers. This about it as a management API, which is used to CRUD elements rather than invoking. This node can be exposed to developers but hidden/protected in production.

Additional configuration required: FN_PUBLIC_LB_URL