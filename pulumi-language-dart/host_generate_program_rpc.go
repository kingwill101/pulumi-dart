package main

import (
	"context"

	codegen "github.com/kingwill101/pulumi-dart/pulumi-language-dart/codegen"
	pulumirpc "github.com/pulumi/pulumi/sdk/v3/proto/go"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

func (host *dartLanguageHost) GenerateProgram(
	ctx context.Context, req *pulumirpc.GenerateProgramRequest,
) (*pulumirpc.GenerateProgramResponse, error) {
	_ = ctx
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "request is required")
	}

	return &pulumirpc.GenerateProgramResponse{Source: map[string][]byte{
		"main.dart": codegen.GeneratedProgramStub(req.GetSource()),
	}}, nil
}
