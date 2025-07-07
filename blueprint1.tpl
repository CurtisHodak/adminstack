
inputs:
  - id: stack_name
    name: Stack name
stack:
  name: ${{ inputs.stack_name }}
  space: root
  vcs:
    branch: main
    repository: resources
    provider: GITHUB
  vendor:
    terraform:
      manage_state: true
      version: "1.5.7"