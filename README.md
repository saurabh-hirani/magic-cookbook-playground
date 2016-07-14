### Setup

  - Clone the [magic cookbook repo](https://github.com/sczizzo/magic-cookbook)

  - Install some required gems (installation may vary depending on how you've configured your Ruby)

    ```
    $ gem install -V java-properties
    ```

  - set GITHUB_REPOS to the parent directory in which you cloned the cookbook

    ```
    $ export GITHUB_REPOS="parent_dir_of_magic_cookbook"
    ```
  
  - Read the code and play with the examples. We may not be able to test them all because 
    the magic cookbook is supposed to run in the context of chef.

    ```
    $ ruby test_helpers.rb
    ```

### Watch out

  - If some examples do not work - e.g. materialization - this is probably because you don't
    have the chef gem installed. Install it as per your node configuration.
