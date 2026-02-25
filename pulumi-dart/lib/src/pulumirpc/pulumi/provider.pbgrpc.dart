// This is a generated file - do not edit.
//
// Generated from pulumi/provider.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart' as $1;

import 'plugin.pb.dart' as $2;
import 'provider.pb.dart' as $0;

export 'provider.pb.dart';

/// The ResourceProvider service defines a standard interface for [resource providers](providers). A resource provider
/// manages a set of configuration, resources, functions and so on in a single package, and offers methods such as CRUD
/// operations on resources and invocations of functions. Resource providers are primarily managed by the Pulumi engine
/// as part of a deployment in order to interact with the cloud providers underpinning a Pulumi application.
@$pb.GrpcServiceName('pulumirpc.ResourceProvider')
class ResourceProviderClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  ResourceProviderClient(super.channel, {super.options, super.interceptors});

  /// `Handshake` is the first call made by the engine to a provider. It is used to pass the engine's address to the
  /// provider so that it may establish its own connections back, and to establish protocol configuration that will be
  /// used to communicate between the two parties. Providers that support `Handshake` should return responses
  /// consistent with those returned in response to [](pulumirpc.ResourceProvider.Configure) calls where there is
  /// overlap due to the use of `Configure` prior to `Handshake`'s introduction.
  $grpc.ResponseFuture<$0.ProviderHandshakeResponse> handshake(
    $0.ProviderHandshakeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$handshake, request, options: options);
  }

  /// `Parameterize` is the primary means of supporting [parameterized providers](parameterized-providers), which allow
  /// a caller to change a provider's behavior ahead of its [configuration](pulumirpc.ResourceProvider.Configure) and
  /// subsequent use. Where a [](pulumirpc.ResourceProvider.Configure) call allows a caller to influence provider
  /// behaviour at a high level (e.g. by specifying the region in which an AWS provider should operate), a
  /// `Parameterize` call may change the set of resources and functions that a provider offers (that is, its schema).
  /// This is useful in any case where some "set" of providers can be captured by a single implementation that may
  /// power fundamentally different schemata -- dynamically bridging Terraform providers, or managing Kubernetes
  /// clusters with custom resource definitions, for instance, are good examples. The parameterized package that
  /// `Parameterize` yields is known as a *sub-package* of the original (unparameterized) package.
  ///
  /// `Parameterize` supports two types of parameterization:
  ///
  /// * *Replacement parameterization*, whereby a `Parameterize` call results in a schema that completely replaces the
  ///   original provider schema. Bridging a Terraform provider dynamically might be an example of this -- following
  ///   the call to `Parameterize`, the provider's schema will become that of the Terraform provider that was bridged.
  ///   Providers that implement replacement parameterization expect a *single* call to `Parameterize`.
  ///
  /// * *Extension parameterization*, in which a `Parameterize` call results in a schema that is a superset of the
  ///   original. This is useful in cases where a provider can be extended with additional resources or functions, such
  ///   as a Kubernetes provider that can be extended with resources representing custom resource definitions.
  ///   Providers that implement extension parameterization should accept multiple calls to `Parameterize`. Extension
  ///   packages may even be called multiple times with the same package name, but with different versions. The CRUD
  ///   operations of extension resources must include the version of which sub-package they correspond to.
  ///
  /// `Parameterize` should work the same whether it is provided with `ParametersArgs` or `ParametersValue` input. In
  /// each case it should return the sub-package name and version (which when a `ParametersValue` is supplied should
  /// match the given input).
  $grpc.ResponseFuture<$0.ParameterizeResponse> parameterize(
    $0.ParameterizeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$parameterize, request, options: options);
  }

  /// GetSchema fetches the schema for this resource provider.
  $grpc.ResponseFuture<$0.GetSchemaResponse> getSchema(
    $0.GetSchemaRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getSchema, request, options: options);
  }

  /// `CheckConfig` validates a set of configuration inputs that will be passed to this provider instance.
  /// `CheckConfig` is to provider resources what [](pulumirpc.ResourceProvider.Check) is to individual resources, and
  /// is the first stage in configuring (that is, eventually executing a [](pulumirpc.ResourceProvider.Configure) call)
  /// a provider using user-supplied values. In the case that provider inputs are coming from some source that has been
  /// checked previously (e.g. a Pulumi state), it is not necessary to call `CheckConfig`.
  ///
  /// A `CheckConfig` call returns either a set of checked, known-valid inputs that may subsequently be passed to
  /// [](pulumirpc.ResourceProvider.DiffConfig) and/or [](pulumirpc.ResourceProvider.Configure), or a set of errors
  /// explaining why the inputs are invalid. In the case that a set of inputs are successfully validated and returned,
  /// `CheckConfig` *may also populate default values* for provider configuration, returning them so that they may be
  /// passed to a subsequent [](pulumirpc.ResourceProvider.Configure) call and persisted in the Pulumi state. In the
  /// case that `CheckConfig` fails and returns a set of errors, it is expected that the caller (typically the Pulumi
  /// engine) will fail provider registration.
  ///
  /// As a rule, the provider inputs returned by a call to `CheckConfig` should preserve the original representation of
  /// the properties as present in the program inputs. Though this rule is not required for correctness, violations
  /// thereof can negatively impact the end-user experience, as the provider inputs are used for detecting and
  /// rendering diffs.
  $grpc.ResponseFuture<$0.CheckResponse> checkConfig(
    $0.CheckRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$checkConfig, request, options: options);
  }

  /// `DiffConfig` compares an existing ("old") provider configuration with a new configuration and computes the
  /// difference (if any) between them. `DiffConfig` is to provider resources what [](pulumirpc.ResourceProvider.Diff)
  /// is to individual resources. `DiffConfig` should only be called with values that have at some point been validated
  /// by a [](pulumirpc.ResourceProvider.CheckConfig) call. The [](pulumirpc.DiffResponse) returned by a `DiffConfig`
  /// call is used primarily to determine whether or not the newly configured provider is capable of managing resources
  /// owned by the old provider. If `DiffConfig` indicates that the provider resource needs to be replaced, for
  /// instance, then all resources owned by that provider will *also* need to be replaced. Replacement semantics should
  /// thus be reserved for changes to configuration properties that are guaranteed to make old resources unmanageable.
  /// Changes to an AWS region, for example, will almost certainly require a provider replacement, but changes to an
  /// AWS access key, should almost certainly not.
  ///
  /// Implementations must satisfy the invariants documented on `DiffResponse`.
  $grpc.ResponseFuture<$0.DiffResponse> diffConfig(
    $0.DiffRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$diffConfig, request, options: options);
  }

  /// `Configure` is the final stage in configuring a provider instance. Callers may supply two sets of data:
  ///
  /// * Provider-specific configuration, which is the set of inputs that have been validated by a previous
  ///   [](pulumirpc.ResourceProvider.CheckConfig) call.
  /// * Provider-agnostic ("protocol") configuration, such as whether or not the caller supports secrets.
  ///
  /// The provider is expected to return its own set of protocol configuration, indicating which features it supports
  /// in turn so that the caller and the provider can interact appropriately.
  ///
  /// Providers may expect a *single* call to `Configure`. If a call to `Configure` is missing required configuration,
  /// the provider may return a set of error details containing [](pulumirpc.ConfigureErrorMissingKeys) values to
  /// indicate which keys are missing.
  ///
  /// :::{important}
  /// The use of `Configure` to configure protocol features is deprecated in favour of the
  /// [](pulumirpc.ResourceProvider.Handshake) method, which should be implemented by newer providers. To enable
  /// compatibility between older engines and providers:
  ///
  /// * Callers which call `Handshake` *must* call `Configure` with flags such as `acceptSecrets` and `acceptResources`
  ///   set to `true`, since these features predate the introduction of `Handshake` and thus `Handshake`-aware callers
  ///   must support them. See [](pulumirpc.ConfigureRequest) for more information.
  /// * Providers which implement `Handshake` *must* support flags such as `acceptSecrets` and `acceptResources`, and
  ///   indicate as such by always returning `true` for these fields in [](pulumirpc.ConfigureResponse). See
  ///   [](pulumirpc.ConfigureResponse) for more information.
  /// :::
  $grpc.ResponseFuture<$0.ConfigureResponse> configure(
    $0.ConfigureRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$configure, request, options: options);
  }

  /// Invoke dynamically executes a built-in function in the provider.
  $grpc.ResponseFuture<$0.InvokeResponse> invoke(
    $0.InvokeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$invoke, request, options: options);
  }

  /// Call dynamically executes a method in the provider associated with a component resource.
  $grpc.ResponseFuture<$0.CallResponse> call(
    $0.CallRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$call, request, options: options);
  }

  /// `Check` validates a set of input properties against a given resource type. A `Check` call returns either a set of
  /// checked, known-valid inputs that may subsequently be passed to [](pulumirpc.ResourceProvider.Diff),
  /// [](pulumirpc.ResourceProvider.Create), or [](pulumirpc.ResourceProvider.Update); or a set of errors explaining
  /// why the inputs are invalid. In the case that a set of inputs are successfully validated and returned, `Check`
  /// *may also populate default values* for resource inputs, returning them so that they may be passed to a subsequent
  /// call and persisted in the Pulumi state. In the case that `Check` fails and returns a set of errors, it is
  /// expected that the caller (typically the Pulumi engine) will fail resource registration.
  ///
  /// As a rule, the provider inputs returned by a call to `Check` should preserve the original representation of the
  /// properties as present in the program inputs. Though this rule is not required for correctness, violations thereof
  /// can negatively impact the end-user experience, as the provider inputs are used for detecting and rendering
  /// diffs.
  $grpc.ResponseFuture<$0.CheckResponse> check(
    $0.CheckRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$check, request, options: options);
  }

  /// `Diff` compares an existing ("old") set of resource properties with a new set of properties and computes the
  /// difference (if any) between them. `Diff` should only be called with values that have at some point been validated
  /// by a [](pulumirpc.ResourceProvider.Check) call.
  ///
  /// Implementations must satisfy the invariants documented on `DiffResponse`.
  $grpc.ResponseFuture<$0.DiffResponse> diff(
    $0.DiffRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$diff, request, options: options);
  }

  /// `Create` provisions a new instance of the specified [(custom) resource](custom-resources). It returns a
  /// provider-assigned ID for the resource as well as the output properties that arose from the creation properties.
  /// Output properties are typically the union of the resource's input properties and any additional values that were
  /// computed or made available during creation.
  ///
  /// If creation fails, `Create` may return an [](pulumirpc.ErrorResourceInitFailed) error detail explaining why.
  /// Moreover, if `Create` does return an error, it must be the case that the resource was *not* created (that is,
  /// `Create` can be thought of as transactional or atomic).
  $grpc.ResponseFuture<$0.CreateResponse> create(
    $0.CreateRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$create, request, options: options);
  }

  /// `Read` reads the current live state associated with a resource identified by the supplied state. The given state
  /// must be sufficient to uniquely identify the resource. This is typically just the resource ID, but may also
  /// include other properties.
  $grpc.ResponseFuture<$0.ReadResponse> read(
    $0.ReadRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$read, request, options: options);
  }

  /// `Update` updates an existing resource according to a new set of inputs, returning a new set of output properties.
  $grpc.ResponseFuture<$0.UpdateResponse> update(
    $0.UpdateRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$update, request, options: options);
  }

  /// `Delete` deprovisions an existing resource as specified by its ID. `Delete` should be transactional/atomic -- if
  /// a call to `Delete` fails, it must be the case that the resource was *not* deleted and can be assumed to still
  /// exist.
  $grpc.ResponseFuture<$1.Empty> delete(
    $0.DeleteRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  /// `Construct` provisions a new [component resource](component-resources). Providers that implement `Construct` are
  /// referred to as [component providers](component-providers). `Construct` is to component resources what
  /// [](pulumirpc.ResourceProvider.Create) is to [custom resources](custom-resources). Components do not have any
  /// lifecycle of their own, and instead embody the lifecycles of the resources that they are composed of. As such,
  /// `Construct` is effectively a subprogram whose resources will be persisted in the caller's state. It is
  /// consequently passed enough information to manage fully these resources. At a high level, this comprises:
  ///
  /// * A [](pulumirpc.ResourceMonitor) endpoint which the provider can use to [register](resource-registration) nested
  ///   custom or component resources that belong to the component.
  ///
  /// * A set of input properties.
  ///
  /// * A full set of [resource options](https://www.pulumi.com/docs/iac/concepts/options/) that the component should
  ///   propagate to resources it registers against the supplied resource monitor.
  $grpc.ResponseFuture<$0.ConstructResponse> construct(
    $0.ConstructRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$construct, request, options: options);
  }

  /// Cancel signals the provider to gracefully shut down and abort any ongoing resource operations.
  /// Operations aborted in this way will return an error (e.g., `Update` and `Create` will either return a
  /// creation error or an initialization error). Since Cancel is advisory and non-blocking, it is up
  /// to the host to decide how long to wait after Cancel is called before (e.g.)
  /// hard-closing any gRPC connection.
  $grpc.ResponseFuture<$1.Empty> cancel(
    $1.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$cancel, request, options: options);
  }

  /// GetPluginInfo returns generic information about this plugin, like its version.
  $grpc.ResponseFuture<$2.PluginInfo> getPluginInfo(
    $1.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getPluginInfo, request, options: options);
  }

  /// Attach sends the engine address to an already running plugin.
  $grpc.ResponseFuture<$1.Empty> attach(
    $2.PluginAttach request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$attach, request, options: options);
  }

  /// `GetMapping` returns mappings designed to aid in [converting programs and state from other
  /// ecosystems](converters). It accepts a "conversion key", which effectively corresponds to a source language, such
  /// as `terraform`, and a *source provider name*, which is the name of the provider *in the source language*. Given
  /// these, it returns source-specific mapping data for the provider requested. As an example, the Pulumi AWS
  /// provider, which is bridged from the Terraform AWS provider and thus capable of mapping names between the two,
  /// might respond to a call with key `terraform` and source provider name `aws` with mapping data for transforming
  /// (among other things) Terraform AWS names such as `aws_s3_bucket` into Pulumi AWS types such as
  /// `aws:s3/bucket:Bucket`. If a provider only supports a single source provider, or has some sensible default, it
  /// may respond also to a call in which the source provider name is empty (`""`), which will be made when the engine
  /// does not have sufficient knowledge to work out which provider offers a specific mapping.
  ///
  /// In general, it is expected that providers implemented by bridging an equivalent provider from another ecosystem
  /// (such as bridged Terraform providers built atop the `pulumi-terraform-bridge`, for instance) implement
  /// `GetMapping` to support conversion from that ecosystem into Pulumi using the same logic that underpins the
  /// bridging itself.
  $grpc.ResponseFuture<$0.GetMappingResponse> getMapping(
    $0.GetMappingRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getMapping, request, options: options);
  }

  /// `GetMappings` is an optional method designed to aid in [converting programs and state from other
  /// ecosystems](converters). `GetMappings` accepts a "conversion key". This corresponds to a source language, for
  /// which we want to retrieve mappings for names etc. from that source language into Pulumi. An example key might
  /// therefore be `terraform` in the event that we wish to map e.g. Terraform resource names to Pulumi resource types.
  /// Given a key, `GetMappings` returns a list of *source provider names* for which calls to `GetMapping` will return
  /// mappings. So, continuing the Terraform example, the Pulumi AWS provider, which is bridged from the Terraform AWS
  /// provider and thus capable of mapping names between the two, might return the list `["aws"]` in response to a call
  /// with key `terraform`.
  ///
  /// If a provider does not implement `GetMappings`, the engine will fall back to calling `GetMapping` blindly without
  /// a source provider name (that is, with the value `""`).
  $grpc.ResponseFuture<$0.GetMappingsResponse> getMappings(
    $0.GetMappingsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getMappings, request, options: options);
  }

  // method descriptors

  static final _$handshake = $grpc.ClientMethod<$0.ProviderHandshakeRequest,
          $0.ProviderHandshakeResponse>(
      '/pulumirpc.ResourceProvider/Handshake',
      ($0.ProviderHandshakeRequest value) => value.writeToBuffer(),
      $0.ProviderHandshakeResponse.fromBuffer);
  static final _$parameterize =
      $grpc.ClientMethod<$0.ParameterizeRequest, $0.ParameterizeResponse>(
          '/pulumirpc.ResourceProvider/Parameterize',
          ($0.ParameterizeRequest value) => value.writeToBuffer(),
          $0.ParameterizeResponse.fromBuffer);
  static final _$getSchema =
      $grpc.ClientMethod<$0.GetSchemaRequest, $0.GetSchemaResponse>(
          '/pulumirpc.ResourceProvider/GetSchema',
          ($0.GetSchemaRequest value) => value.writeToBuffer(),
          $0.GetSchemaResponse.fromBuffer);
  static final _$checkConfig =
      $grpc.ClientMethod<$0.CheckRequest, $0.CheckResponse>(
          '/pulumirpc.ResourceProvider/CheckConfig',
          ($0.CheckRequest value) => value.writeToBuffer(),
          $0.CheckResponse.fromBuffer);
  static final _$diffConfig =
      $grpc.ClientMethod<$0.DiffRequest, $0.DiffResponse>(
          '/pulumirpc.ResourceProvider/DiffConfig',
          ($0.DiffRequest value) => value.writeToBuffer(),
          $0.DiffResponse.fromBuffer);
  static final _$configure =
      $grpc.ClientMethod<$0.ConfigureRequest, $0.ConfigureResponse>(
          '/pulumirpc.ResourceProvider/Configure',
          ($0.ConfigureRequest value) => value.writeToBuffer(),
          $0.ConfigureResponse.fromBuffer);
  static final _$invoke =
      $grpc.ClientMethod<$0.InvokeRequest, $0.InvokeResponse>(
          '/pulumirpc.ResourceProvider/Invoke',
          ($0.InvokeRequest value) => value.writeToBuffer(),
          $0.InvokeResponse.fromBuffer);
  static final _$call = $grpc.ClientMethod<$0.CallRequest, $0.CallResponse>(
      '/pulumirpc.ResourceProvider/Call',
      ($0.CallRequest value) => value.writeToBuffer(),
      $0.CallResponse.fromBuffer);
  static final _$check = $grpc.ClientMethod<$0.CheckRequest, $0.CheckResponse>(
      '/pulumirpc.ResourceProvider/Check',
      ($0.CheckRequest value) => value.writeToBuffer(),
      $0.CheckResponse.fromBuffer);
  static final _$diff = $grpc.ClientMethod<$0.DiffRequest, $0.DiffResponse>(
      '/pulumirpc.ResourceProvider/Diff',
      ($0.DiffRequest value) => value.writeToBuffer(),
      $0.DiffResponse.fromBuffer);
  static final _$create =
      $grpc.ClientMethod<$0.CreateRequest, $0.CreateResponse>(
          '/pulumirpc.ResourceProvider/Create',
          ($0.CreateRequest value) => value.writeToBuffer(),
          $0.CreateResponse.fromBuffer);
  static final _$read = $grpc.ClientMethod<$0.ReadRequest, $0.ReadResponse>(
      '/pulumirpc.ResourceProvider/Read',
      ($0.ReadRequest value) => value.writeToBuffer(),
      $0.ReadResponse.fromBuffer);
  static final _$update =
      $grpc.ClientMethod<$0.UpdateRequest, $0.UpdateResponse>(
          '/pulumirpc.ResourceProvider/Update',
          ($0.UpdateRequest value) => value.writeToBuffer(),
          $0.UpdateResponse.fromBuffer);
  static final _$delete = $grpc.ClientMethod<$0.DeleteRequest, $1.Empty>(
      '/pulumirpc.ResourceProvider/Delete',
      ($0.DeleteRequest value) => value.writeToBuffer(),
      $1.Empty.fromBuffer);
  static final _$construct =
      $grpc.ClientMethod<$0.ConstructRequest, $0.ConstructResponse>(
          '/pulumirpc.ResourceProvider/Construct',
          ($0.ConstructRequest value) => value.writeToBuffer(),
          $0.ConstructResponse.fromBuffer);
  static final _$cancel = $grpc.ClientMethod<$1.Empty, $1.Empty>(
      '/pulumirpc.ResourceProvider/Cancel',
      ($1.Empty value) => value.writeToBuffer(),
      $1.Empty.fromBuffer);
  static final _$getPluginInfo = $grpc.ClientMethod<$1.Empty, $2.PluginInfo>(
      '/pulumirpc.ResourceProvider/GetPluginInfo',
      ($1.Empty value) => value.writeToBuffer(),
      $2.PluginInfo.fromBuffer);
  static final _$attach = $grpc.ClientMethod<$2.PluginAttach, $1.Empty>(
      '/pulumirpc.ResourceProvider/Attach',
      ($2.PluginAttach value) => value.writeToBuffer(),
      $1.Empty.fromBuffer);
  static final _$getMapping =
      $grpc.ClientMethod<$0.GetMappingRequest, $0.GetMappingResponse>(
          '/pulumirpc.ResourceProvider/GetMapping',
          ($0.GetMappingRequest value) => value.writeToBuffer(),
          $0.GetMappingResponse.fromBuffer);
  static final _$getMappings =
      $grpc.ClientMethod<$0.GetMappingsRequest, $0.GetMappingsResponse>(
          '/pulumirpc.ResourceProvider/GetMappings',
          ($0.GetMappingsRequest value) => value.writeToBuffer(),
          $0.GetMappingsResponse.fromBuffer);
}

@$pb.GrpcServiceName('pulumirpc.ResourceProvider')
abstract class ResourceProviderServiceBase extends $grpc.Service {
  $core.String get $name => 'pulumirpc.ResourceProvider';

  ResourceProviderServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ProviderHandshakeRequest,
            $0.ProviderHandshakeResponse>(
        'Handshake',
        handshake_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ProviderHandshakeRequest.fromBuffer(value),
        ($0.ProviderHandshakeResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ParameterizeRequest, $0.ParameterizeResponse>(
            'Parameterize',
            parameterize_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ParameterizeRequest.fromBuffer(value),
            ($0.ParameterizeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetSchemaRequest, $0.GetSchemaResponse>(
        'GetSchema',
        getSchema_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetSchemaRequest.fromBuffer(value),
        ($0.GetSchemaResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CheckRequest, $0.CheckResponse>(
        'CheckConfig',
        checkConfig_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CheckRequest.fromBuffer(value),
        ($0.CheckResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DiffRequest, $0.DiffResponse>(
        'DiffConfig',
        diffConfig_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DiffRequest.fromBuffer(value),
        ($0.DiffResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ConfigureRequest, $0.ConfigureResponse>(
        'Configure',
        configure_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ConfigureRequest.fromBuffer(value),
        ($0.ConfigureResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.InvokeRequest, $0.InvokeResponse>(
        'Invoke',
        invoke_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.InvokeRequest.fromBuffer(value),
        ($0.InvokeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CallRequest, $0.CallResponse>(
        'Call',
        call_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CallRequest.fromBuffer(value),
        ($0.CallResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CheckRequest, $0.CheckResponse>(
        'Check',
        check_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CheckRequest.fromBuffer(value),
        ($0.CheckResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DiffRequest, $0.DiffResponse>(
        'Diff',
        diff_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DiffRequest.fromBuffer(value),
        ($0.DiffResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateRequest, $0.CreateResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateRequest.fromBuffer(value),
        ($0.CreateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReadRequest, $0.ReadResponse>(
        'Read',
        read_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ReadRequest.fromBuffer(value),
        ($0.ReadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateRequest, $0.UpdateResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateRequest.fromBuffer(value),
        ($0.UpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteRequest, $1.Empty>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ConstructRequest, $0.ConstructResponse>(
        'Construct',
        construct_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ConstructRequest.fromBuffer(value),
        ($0.ConstructResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $1.Empty>(
        'Cancel',
        cancel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $2.PluginInfo>(
        'GetPluginInfo',
        getPluginInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($2.PluginInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PluginAttach, $1.Empty>(
        'Attach',
        attach_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PluginAttach.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetMappingRequest, $0.GetMappingResponse>(
        'GetMapping',
        getMapping_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetMappingRequest.fromBuffer(value),
        ($0.GetMappingResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetMappingsRequest, $0.GetMappingsResponse>(
            'GetMappings',
            getMappings_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetMappingsRequest.fromBuffer(value),
            ($0.GetMappingsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ProviderHandshakeResponse> handshake_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ProviderHandshakeRequest> $request) async {
    return handshake($call, await $request);
  }

  $async.Future<$0.ProviderHandshakeResponse> handshake(
      $grpc.ServiceCall call, $0.ProviderHandshakeRequest request);

  $async.Future<$0.ParameterizeResponse> parameterize_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ParameterizeRequest> $request) async {
    return parameterize($call, await $request);
  }

  $async.Future<$0.ParameterizeResponse> parameterize(
      $grpc.ServiceCall call, $0.ParameterizeRequest request);

  $async.Future<$0.GetSchemaResponse> getSchema_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetSchemaRequest> $request) async {
    return getSchema($call, await $request);
  }

  $async.Future<$0.GetSchemaResponse> getSchema(
      $grpc.ServiceCall call, $0.GetSchemaRequest request);

  $async.Future<$0.CheckResponse> checkConfig_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.CheckRequest> $request) async {
    return checkConfig($call, await $request);
  }

  $async.Future<$0.CheckResponse> checkConfig(
      $grpc.ServiceCall call, $0.CheckRequest request);

  $async.Future<$0.DiffResponse> diffConfig_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.DiffRequest> $request) async {
    return diffConfig($call, await $request);
  }

  $async.Future<$0.DiffResponse> diffConfig(
      $grpc.ServiceCall call, $0.DiffRequest request);

  $async.Future<$0.ConfigureResponse> configure_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ConfigureRequest> $request) async {
    return configure($call, await $request);
  }

  $async.Future<$0.ConfigureResponse> configure(
      $grpc.ServiceCall call, $0.ConfigureRequest request);

  $async.Future<$0.InvokeResponse> invoke_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.InvokeRequest> $request) async {
    return invoke($call, await $request);
  }

  $async.Future<$0.InvokeResponse> invoke(
      $grpc.ServiceCall call, $0.InvokeRequest request);

  $async.Future<$0.CallResponse> call_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.CallRequest> $request) async {
    return call($call, await $request);
  }

  $async.Future<$0.CallResponse> call(
      $grpc.ServiceCall call, $0.CallRequest request);

  $async.Future<$0.CheckResponse> check_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.CheckRequest> $request) async {
    return check($call, await $request);
  }

  $async.Future<$0.CheckResponse> check(
      $grpc.ServiceCall call, $0.CheckRequest request);

  $async.Future<$0.DiffResponse> diff_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.DiffRequest> $request) async {
    return diff($call, await $request);
  }

  $async.Future<$0.DiffResponse> diff(
      $grpc.ServiceCall call, $0.DiffRequest request);

  $async.Future<$0.CreateResponse> create_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.CreateRequest> $request) async {
    return create($call, await $request);
  }

  $async.Future<$0.CreateResponse> create(
      $grpc.ServiceCall call, $0.CreateRequest request);

  $async.Future<$0.ReadResponse> read_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.ReadRequest> $request) async {
    return read($call, await $request);
  }

  $async.Future<$0.ReadResponse> read(
      $grpc.ServiceCall call, $0.ReadRequest request);

  $async.Future<$0.UpdateResponse> update_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.UpdateRequest> $request) async {
    return update($call, await $request);
  }

  $async.Future<$0.UpdateResponse> update(
      $grpc.ServiceCall call, $0.UpdateRequest request);

  $async.Future<$1.Empty> delete_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.DeleteRequest> $request) async {
    return delete($call, await $request);
  }

  $async.Future<$1.Empty> delete(
      $grpc.ServiceCall call, $0.DeleteRequest request);

  $async.Future<$0.ConstructResponse> construct_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ConstructRequest> $request) async {
    return construct($call, await $request);
  }

  $async.Future<$0.ConstructResponse> construct(
      $grpc.ServiceCall call, $0.ConstructRequest request);

  $async.Future<$1.Empty> cancel_Pre(
      $grpc.ServiceCall $call, $async.Future<$1.Empty> $request) async {
    return cancel($call, await $request);
  }

  $async.Future<$1.Empty> cancel($grpc.ServiceCall call, $1.Empty request);

  $async.Future<$2.PluginInfo> getPluginInfo_Pre(
      $grpc.ServiceCall $call, $async.Future<$1.Empty> $request) async {
    return getPluginInfo($call, await $request);
  }

  $async.Future<$2.PluginInfo> getPluginInfo(
      $grpc.ServiceCall call, $1.Empty request);

  $async.Future<$1.Empty> attach_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.PluginAttach> $request) async {
    return attach($call, await $request);
  }

  $async.Future<$1.Empty> attach(
      $grpc.ServiceCall call, $2.PluginAttach request);

  $async.Future<$0.GetMappingResponse> getMapping_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetMappingRequest> $request) async {
    return getMapping($call, await $request);
  }

  $async.Future<$0.GetMappingResponse> getMapping(
      $grpc.ServiceCall call, $0.GetMappingRequest request);

  $async.Future<$0.GetMappingsResponse> getMappings_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetMappingsRequest> $request) async {
    return getMappings($call, await $request);
  }

  $async.Future<$0.GetMappingsResponse> getMappings(
      $grpc.ServiceCall call, $0.GetMappingsRequest request);
}
