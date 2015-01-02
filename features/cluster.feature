Feature: Standalone Consul server as master without peers
  In order to use Consul features
  As a cool system engineer
  I want to start a Consul server to balance
  And discovery multiple applications

  Background:
    Given a Consul server with the following config:
      | Key  | Value |
      | addr | 0.0.0.0:8500 |
    And the following cluster configuration
      | Name  | Master | Config      |
      | hydra | true   | hydra1.conf |

  Scenario: basic server
    When I start the server
    Then it should be listening on port 8500
    And should define a network latency with 100 ms
