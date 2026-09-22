# Plow Smoke Test: the smallest agent on the OpenClaw base, built to prove that a
# 1-click install answers its owner and reports its usage to the Agent Index.
FROM public.ecr.aws/e1h7x4a2/plow-cloud-agents:base-7c476de9b41fd74be2142e7806344bd632177006@sha256:e72e609fec7f28d5d6f7df8ec83cf2b62ea453c29e64b3c6ed18516140e82825

# A cloud install runs the image with no compose file, so the Index identity
# lives here or nowhere: the base's reporter stands down without an id.
ENV AGENT_ID=plow-smoke-test \
    AGENT_NAME="Plow Smoke Test" \
    AGENT_BLURB="Proves a 1-click OpenClaw agent installs, answers, and reports its usage."
