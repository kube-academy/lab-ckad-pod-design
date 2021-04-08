
An important tactic when taking the CKAD examination is to set yourself up to answer questions quickly while at the same time reducing the rate of mistakes.

These techniques can help here:

- Use command completion
- Use aliases and shorthands for longer keywords that you would otherwise have to type

Your environment has been pre-configured with command completion, and a few shortcuts and aliases that you should consider taking advantage of:

- The kubectl command has been aliased as `k`.  Typing `k` sure beats having to type `kubectl` each and every time.

    Try it:

    ```terminal:execute
    command: k get pod
    ```

- The environment variable `DR` has been set.  It expands to `--dry-run=client -oyaml` and is provided for convenience.  Each time you need to produce a _base_ yaml file for a pod or a deployment, the mechanism is to dry-run a kubectl command and set the output format to yaml.

    Try it:

    ```terminal:execute
    command: k run my-web-server --image=nginx $DR | tee mypod.yaml
    ```

- The `.vimrc` file has been pre-set with line numbers and auto-indent, and is generally yaml-friendly.

    Try it:

    ```terminal:execute
    command: vim mypod.yaml
    ```

### Tips

- In situations where an errant tab makes its way into your yaml file, use `:retab`, which replaces all tab sequences with new strings of white-space using the tabstop value.

- If you are comfortable with vim, vim bindings is turned on in the bash command shell (`set -o vi`).  It's often quicker to edit an existing command than to re-type it from scratch.

- The `.inputrc` file has been set for history search.  I find this to be one of the [most useful things in bash](https://coderwall.com/p/oqtj8w/the-single-most-useful-thing-in-bash).  I recommend you take advantage of it.
