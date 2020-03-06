# Prepare for the HPC filesystem, as per: 
# https://sydneyuni.atlassian.net/wiki/spaces/RC/pages/761200644/Running+containers+with+Singularity

# > We cannot enable OverlayFS for Singularity on Artemis, so you will need to
# > make sure your containers have both /project and /scratch directories
# > before copying your container to Artemis. If you’re running GPU jobs,
# > the file /usr/bin/nvidia-smi needs to exist as well 
# > (but doesn’t need to be nvidia-smi itself).)

mkdir /project /scratch
touch /usr/bin/nvidia-smi

