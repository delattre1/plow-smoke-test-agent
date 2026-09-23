# Plow Smoke Test: the smallest agent on the OpenClaw base, built to prove that a
# 1-click install answers its owner and reports its usage to the Agent Index.
FROM public.ecr.aws/e1h7x4a2/plow-cloud-agents:base-a29efa592aa8a487cf5b763598450512a07189fe@sha256:ae4ca2a1cf3883997607482911c8a3ad2ce0ce02685fd4433bb25ec82a1baaa4

# A cloud install runs the image with no compose file, so the Index identity
# lives here or nowhere: the base's reporter stands down without an id.
ENV AGENT_ID=plow-smoke-test \
    AGENT_NAME="Plow Smoke Test" \
    AGENT_BLURB="Proves a 1-click OpenClaw agent installs, answers, and reports its usage."
