import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_config_args.dart';
import 'service_config_label.dart';
import 'service_config_state.dart';

/// &lt;!-- Bug: Type and Name are switched --&gt;
/// Manages the configs of a Docker service in a swarm.
///
/// {{% examples %}}
/// ## Example Usage
///
/// ### Basic
///
/// ```terraform
/// resource "docker_config" "foo_config" {
///   name = "foo_config"
///   data = base64encode("{\"a\": \"b\"}")
/// }
/// ```
///
/// ### Advanced
/// ### Dynamically set config with a template
/// In this example you can use the `${var.foo_port}` variable to dynamically
/// set the `${port}` variable in the `foo.configs.json.tpl` template and create
/// the data of the `fooConfig` with the help of the `base64encode` interpolation
/// function.
///
/// The file `foo.config.json.tpl` has the following content:
///
/// ```gojson
/// {
///   "server": {
///     "public_port": ${port}
///   }
/// }
/// ```
///
/// and the resource uses it as follows:
///
/// ```terraform
/// resource "docker_config" "foo_config" {
///   name = "foo_config"
///   data = base64encode(
///     templatefile("${path.cwd}/foo.config.json.tpl",
///       {
///         port = 8080
///       }
///     )
///   )
/// }
/// ```
///
/// ### Update config with no downtime
/// To update a `config`, Terraform will destroy the existing resource and create a replacement.
/// To effectively use a `docker.ServiceConfig` resource with a `docker.Service` resource, it's recommended
/// to specify `createBeforeDestroy` in a `lifecycle` block. Provide a unique `name` attribute,
/// for example with one of the interpolation functions `uuid` or `timestamp` as shown
/// in the example below. The reason is this [issue](https://github.com/moby/moby/issues/35803).
///
/// ```terraform
/// resource "docker_config" "service_config" {
///   name = "${var.service_name}-config-${replace(timestamp(), ":", ".")}"
///   data = base64encode(
///     templatefile("${path.cwd}/foo.config.json.tpl",
///       {
///         port = 8080
///       }
///     )
///   )
///
///   lifecycle {
///     ignore_changes        = ["name"]
///     create_before_destroy = true
///   }
/// }
///
/// resource "docker_service" "service" {
///   # ... other attributes omitted for brevity
///   configs {
///     config_id   = docker_config.service_config.id
///     config_name = docker_config.service_config.name
///     file_name   = "/root/configs/configs.json"
///   }
/// }
/// ```
///
/// ## Import
///
/// !/bin/bash
///
/// ```sh
/// $ pulumi import docker:index/serviceConfig:ServiceConfig foo id
/// ```
///
/// ### Example
///
/// Assuming you created a `config` as follows
///
/// ```sh
/// #!/bin/bash
/// printf '{"a":"b"}' | docker config create foo -
/// # prints the id
/// 08c26c477474478d971139f750984775a7f019dbe8a2e7f09d66a187c009e66d
/// ```
///
/// you provide the definition for the resource as follows
///
/// ```terraform
/// resource "docker_config" "foo" {
///   name = "foo"
///   data = base64encode("{\"a\": \"b\"}")
/// }
/// ```
///
/// then the import command is as follows
///
/// !/bin/bash
///
/// ```sh
/// $ pulumi import docker:index/serviceConfig:ServiceConfig foo 08c26c477474478d971139f750984775a7f019dbe8a2e7f09d66a187c009e66d
/// ```
///
///
/// {{% /examples %}}
class ServiceConfig extends pulumi.CustomResource {
  /// Base64-url-safe-encoded config data
  late final pulumi.Output<String?> data;
  /// Raw (plain text) config data
  late final pulumi.Output<String?> dataRaw;
  /// User-defined key/value metadata
  late final pulumi.Output<List<ServiceConfigLabel>?> labels;
  /// User-defined name of the config
  late final pulumi.Output<String> name;

  /// Creates a new [ServiceConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceConfig]. {@macro pulumi_index_service_config_service_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceConfig(
    String name, {
    ServiceConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/serviceConfig:ServiceConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '5.2.0').merge(options),
        ) {
    data = registerOutput<String?>('data');
    dataRaw = registerOutput<String?>('dataRaw');
    labels = registerOutput<List<ServiceConfigLabel>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceConfigLabel>(guardedValue, (value) => ServiceConfigLabel.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [ServiceConfig] resource's state with the given [name] and [id].
  static ServiceConfig get(
    String name,
    pulumi.Input<String> id, {
    ServiceConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ServiceConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ServiceConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/serviceConfig:ServiceConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    data = registerOutput<String?>('data');
    dataRaw = registerOutput<String?>('dataRaw');
    labels = registerOutput<List<ServiceConfigLabel>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceConfigLabel>(guardedValue, (value) => ServiceConfigLabel.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
  }

  /// Creates a typed reference to an existing [ServiceConfig] resource.
  ServiceConfig.reference(String urn)
    : super(
        'docker:index/serviceConfig:ServiceConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    data = registerOutput<String?>('data');
    dataRaw = registerOutput<String?>('dataRaw');
    labels = registerOutput<List<ServiceConfigLabel>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceConfigLabel>(guardedValue, (value) => ServiceConfigLabel.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
  }
}
