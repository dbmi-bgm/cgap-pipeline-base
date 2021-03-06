{
  "arguments": [],
  "outputs": [
    {
      "id": "#report",
      "type": [
        "null",
        "File"
      ],
      "outputBinding": {
        "glob": "report"
      }
    }
  ],
  "cwlVersion": "v1.0",
  "inputs": [
    {
      "id": "#input_file",
      "type": [
        "null",
        "File"
      ],
      "inputBinding": {
        "separate": true,
        "position": 1
      }
    }
  ],
  "hints": [
    {
      "dockerPull": "ACCOUNT/md5:VERSION",
      "class": "DockerRequirement"
    }
  ],
  "baseCommand": [
    "run.sh"
  ],
  "requirements": [
    {
      "class": "InlineJavascriptRequirement"
    }
  ],
  "class": "CommandLineTool"
}
