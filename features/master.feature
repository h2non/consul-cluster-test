Feature: Standalone Hydra server as master without peers
  In order to use Hydra features
  As a cool system engineer
  I want to start a Hydra server to balance
  And discovery multiple applications

  Background:
    Given a Hydra server with the following config:
      | Key  | Value |
      | addr | 0.0.0.0:7401 |
    And the following cluster configuration
      | Name  | Master | Config      |
      | hydra | true   | hydra1.conf |

  Scenario: basic server
    When I start the server
    Then it should be listening on port 7777
