import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_config_args.dart';
import 'service_config_state.dart';

/// ## Import
///
/// ### Example
///
/// Assuming you created a `config` as follows
///
/// #!/bin/bash
///
/// printf '{"a":"b"}' | docker config create foo -
///
/// prints the id
///
/// 08c26c477474478d971139f750984775a7f019dbe8a2e7f09d66a187c009e66d
///
/// you provide the definition for the resource as follows
///
/// terraform
///
/// resource "docker_config" "foo" {
///
/// name = "foo"
///
/// data = base64encode("{\"a\": \"b\"}")
///
/// }
///
/// then the import command is as follows
///
/// #!/bin/bash
///
/// ```sh
/// $ pulumi import docker:index/serviceConfig:ServiceConfig foo 08c26c477474478d971139f750984775a7f019dbe8a2e7f09d66a187c009e66d
/// ```
class ServiceConfig extends pulumi.CustomResource {
  /// Base64-url-safe-encoded config data
  late final pulumi.Output<String> data;

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
         options ?? pulumi.CustomResourceOptions(),
       ) {
    data = registerOutput<String>('data');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [ServiceConfig] resource's state with the given [name] and [id].
  static ServiceConfig get(
    String name,
    pulumi.Input<String> id, {
    ServiceConfigState? state,
  }) {
    return ServiceConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    data = registerOutput<String>('data');
    this.name = registerOutput<String>('name');
  }
}
