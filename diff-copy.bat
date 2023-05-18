@echo off

mkdir new
mkdir old

robocopy sample new /mir
robocopy sample-old old /mir
robocopy new old /E /xc /xn /xo /xx /xl /is /mov
