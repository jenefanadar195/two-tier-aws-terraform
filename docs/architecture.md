# Two-Tier AWS Architecture

```mermaid
flowchart TB

    Internet((Internet))

    subgraph AWS["AWS Cloud"]
        subgraph VPC["VPC - 10.0.0.0/16"]

            subgraph Public["Public Subnets"]
                ALB["Application Load Balancer"]
            end

            subgraph App["Application Tier"]
                EC2A["EC2 Application Server A"]
                EC2B["EC2 Application Server B"]
            end

            subgraph Database["Private Database Tier"]
                RDS["Amazon RDS PostgreSQL"]
            end

        end
    end

    Internet --> ALB

    ALB --> EC2A
    ALB --> EC2B

    EC2A --> RDS
    EC2B --> RDS