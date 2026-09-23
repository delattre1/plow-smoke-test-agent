# Plow Smoke Test: the smallest agent on the OpenClaw base, built to prove that a
# 1-click install answers its owner and reports its usage to the Agent Index.
FROM public.ecr.aws/e1h7x4a2/plow-cloud-agents:base-03d73125e721a83b115f53d7449bbb900a80ea31@sha256:dfc64176cec75af171ce1466be7fa76d6b9c46dfc0d9cc78e5e221cedd493070

# A cloud install runs the image with no compose file, so the Index identity
# lives here or nowhere: the base's reporter stands down without an id.
ENV AGENT_ID=plow-smoke-test \
    AGENT_NAME="Plow Smoke Test" \
    AGENT_BLURB="Proves a 1-click OpenClaw agent installs, answers, and reports its usage."
