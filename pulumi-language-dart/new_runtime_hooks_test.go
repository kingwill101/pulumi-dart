package main

import (
	"context"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"strings"
	"testing"

	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/metadata"
	"google.golang.org/grpc/status"
)

type captureInstallDependenciesServer struct {
	ctx       context.Context
	responses []*pulumirpc.InstallDependenciesResponse
}

func newCaptureInstallDependenciesServer(ctx context.Context) *captureInstallDependenciesServer {
	return &captureInstallDependenciesServer{ctx: ctx}
}

func (s *captureInstallDependenciesServer) Send(resp *pulumirpc.InstallDependenciesResponse) error {
	s.responses = append(s.responses, resp)
	return nil
}

func (s *captureInstallDependenciesServer) stdout() string {
	var b strings.Builder
	for _, resp := range s.responses {
		if len(resp.GetStdout()) > 0 {
			b.Write(resp.GetStdout())
		}
	}
	return b.String()
}

func (s *captureInstallDependenciesServer) stderr() string {
	var b strings.Builder
	for _, resp := range s.responses {
		if len(resp.GetStderr()) > 0 {
			b.Write(resp.GetStderr())
		}
	}
	return b.String()
}

func (s *captureInstallDependenciesServer) SetHeader(metadata.MD) error  { return nil }
func (s *captureInstallDependenciesServer) SendHeader(metadata.MD) error { return nil }
func (s *captureInstallDependenciesServer) SetTrailer(metadata.MD)       {}
func (s *captureInstallDependenciesServer) Context() context.Context     { return s.ctx }
func (s *captureInstallDependenciesServer) SendMsg(interface{}) error    { return nil }
func (s *captureInstallDependenciesServer) RecvMsg(interface{}) error    { return io.EOF }

func TestInstallDependenciesRequiresRequest(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	server := newCaptureInstallDependenciesServer(context.Background())

	err := host.InstallDependencies(nil, server)
	require.Error(t, err)
	assert.Equal(t, codes.InvalidArgument, status.Code(err))
	assert.Contains(t, err.Error(), "request is required")
}

func TestInstallDependenciesRequiresProgramDirectory(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	server := newCaptureInstallDependenciesServer(context.Background())

	err := host.InstallDependencies(&pulumirpc.InstallDependenciesRequest{}, server)
	require.Error(t, err)
	assert.Equal(t, codes.InvalidArgument, status.Code(err))
	assert.Contains(t, err.Error(), "program directory is required")
}

func TestInstallDependenciesUsesProgramDirectoryFromInfo(t *testing.T) {
	t.Parallel()

	testDir := t.TempDir()
	badDir := t.TempDir()
	tracePath := filepath.Join(testDir, "install.trace")

	scriptPath := filepath.Join(t.TempDir(), "fake-dart.sh")
	script := fmt.Sprintf(
		"#!/usr/bin/env bash\n"+
			"echo \"PWD=$(pwd)\" > %q\n"+
			"echo \"ARGS=$*\" >> %q\n",
		tracePath, tracePath,
	)
	err := os.WriteFile(scriptPath, []byte(script), 0o700)
	require.NoError(t, err)

	host := &dartLanguageHost{exec: scriptPath}
	server := newCaptureInstallDependenciesServer(context.Background())

	err = host.InstallDependencies(&pulumirpc.InstallDependenciesRequest{
		Directory: badDir,
		Info: &pulumirpc.ProgramInfo{
			ProgramDirectory: testDir,
		},
	}, server)
	require.NoError(t, err)

	traceBytes, err := os.ReadFile(tracePath)
	require.NoError(t, err)
	trace := string(traceBytes)
	assert.Contains(t, trace, "PWD="+testDir)
	assert.Contains(t, trace, "ARGS=pub get")
	assert.Contains(t, server.stdout(), "Installing dependencies...")
	assert.Contains(t, server.stdout(), "Finished installing dependencies")
	assert.Empty(t, server.stderr())
}

func TestRuntimeOptionsPromptsReturnsEmptyResponse(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	resp, err := host.RuntimeOptionsPrompts(context.Background(), &pulumirpc.RuntimeOptionsRequest{})
	require.NoError(t, err)
	require.NotNil(t, resp)
	assert.Empty(t, resp.Prompts)
}

func TestTemplateReturnsEmptyResponse(t *testing.T) {
	t.Parallel()

	host := &dartLanguageHost{}
	resp, err := host.Template(context.Background(), &pulumirpc.TemplateRequest{})
	require.NoError(t, err)
	require.NotNil(t, resp)
}
