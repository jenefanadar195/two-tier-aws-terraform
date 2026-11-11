# Two-Tier AWS Architecture

```mermaid
flowchart TB

    Internet((Internet))

    subgraph AWS["AWS Cloud"]
        subgraph VPC["VPC - 10.0.0.0/16"]

            subgraph Public["Public Subnets"]
                ALB["Application Load Balancer"]
                EC2["EC2 Application Server"]
            end

            subgraph Database["Private Database Tier"]
                RDS["Amazon RDS PostgreSQL"]
            end

        end
    end

    Internet --> ALB
    ALB --> EC2
    EC2 --> RDS