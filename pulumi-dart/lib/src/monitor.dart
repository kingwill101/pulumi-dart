import 'package:grpc/grpc.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:pulumi/src/pulumirpc/pulumi/provider.pb.dart';
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:pulumi/src/pulumirpc/pulumi/resource.pb.dart' as pulumirpc;
import 'package:pulumi/src/resource/resource.dart';

class Monitor {
  final ResourceMonitorClient _client;

  Monitor(ClientChannel channel) : _client = ResourceMonitorClient(channel);

  ResourceMonitorClient get client => _client;

  Future<SupportsFeatureResponse> supportsFeature(
    SupportsFeatureRequest request,
  ) async {
    final response = await _client.supportsFeature(request.toGrpc());
    return SupportsFeatureResponse.fromGrpc(response);
  }

  Future<InvokeResponse> invoke(ResourceInvokeRequest request) async {
    return await _client.invoke(request);
  }

  Future<CallResponse> call(ResourceCallRequest request) async {
    return await _client.call(request);
  }

  Future<RegisterPackageResponse> registerPackage(
    RegisterPackageRequest request,
  ) async {
    return await _client.registerPackage(request);
  }

  Future<ReadResourceResponse> readResource(
    Resource resource,
    ReadResourceRequest request,
  ) async {
    return await _client.readResource(request);
  }

  Future<RegisterResourceResponse> registerResource(
    Resource resource,
    RegisterResourceRequest request,
  ) async {
    return await _client.registerResource(request);
  }

  Future<Empty> registerResourceOutputs(
    RegisterResourceOutputsRequest request,
  ) async {
    return await _client.registerResourceOutputs(request);
  }
}

class SupportsFeatureRequest {
  final String id;

  SupportsFeatureRequest(this.id);

  pulumirpc.SupportsFeatureRequest toGrpc() {
    return pulumirpc.SupportsFeatureRequest()..id = id;
  }
}

class SupportsFeatureResponse {
  final bool hasSupport;

  SupportsFeatureResponse(this.hasSupport);

  factory SupportsFeatureResponse.fromGrpc(
    pulumirpc.SupportsFeatureResponse response,
  ) {
    return SupportsFeatureResponse(response.hasSupport);
  }
}
