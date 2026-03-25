# Architecture

```md
               ┌───────────────┐
               │    Clients    │
               └───────┬───────┘
                       │ HTTP/HTTPS
                       ▼
               ┌───────────────┐
               │    Nginx      │
               │ Reverse Proxy │
               └───────┬───────┘
                       │ Load Balancing
       ┌───────────────┼───────────────┐
       ▼               ▼               ▼
┌─────────────┐ ┌─────────────┐ ┌─────────────┐
│ Node Replica│ │ Node Replica│ │ Node Replica│...
│      1      │ │      2      │ │      3      │
└─────────────┘ └─────────────┘ └─────────────┘
       │               │               │
       ▼               ▼               ▼
    Database / Cache / Other Services

```
