// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_access_config.dart';
import 'runtime_software_config.dart';
import 'runtime_virtual_machine.dart';

/// {@template pulumi_notebooks_runtime_runtime_args_doc}
/// The set of arguments for Runtime.
/// {@endtemplate}
/// {@macro pulumi_notebooks_runtime_runtime_args_doc}
class RuntimeArgs {
  /// The config settings for accessing runtime.
  /// Structure is documented below.
  final pulumi.Input<RuntimeAccessConfig>? accessConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The labels to associate with this runtime. Label **keys** must
  /// contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be
  /// empty, but, if present, must contain 1 to 63 characters, and must
  /// conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No
  /// more than 32 labels can be associated with a cluster.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// A reference to the zone where the machine resides.
  final pulumi.Input<String> location;
  /// The name specified for the Notebook runtime.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The config settings for software inside the runtime.
  /// Structure is documented below.
  final pulumi.Input<RuntimeSoftwareConfig>? softwareConfig;
  /// Use a Compute Engine VM image to start the managed notebook instance.
  /// Structure is documented below.
  final pulumi.Input<RuntimeVirtualMachine>? virtualMachine;

  /// Creates a new [RuntimeArgs].
  /// [accessConfig] The config settings for accessing runtime.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [labels] The labels to associate with this runtime. Label **keys** must
  /// [location] A reference to the zone where the machine resides.
  /// [name] The name specified for the Notebook runtime.
  /// [project] The ID of the project in which the resource belongs.
  /// [softwareConfig] The config settings for software inside the runtime.
  /// [virtualMachine] Use a Compute Engine VM image to start the managed notebook instance.
  const RuntimeArgs({
    this.accessConfig,
    this.deletionPolicy,
    this.labels,
    required this.location,
    this.name,
    this.project,
    this.softwareConfig,
    this.virtualMachine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeAccessConfig, Map<String, dynamic>>(accessConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
      'softwareConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeSoftwareConfig, Map<String, dynamic>>(softwareConfig, (value) => value.toMap()),
      'virtualMachine': ?pulumi.Input.mapOptionalInputValue<RuntimeVirtualMachine, Map<String, dynamic>>(virtualMachine, (value) => value.toMap()),
    };
  }

  factory RuntimeArgs.fromMap(Map<String, dynamic> map) {
    return RuntimeArgs(
      accessConfig: (() { final guardedValue = map['accessConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuntimeAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      softwareConfig: (() { final guardedValue = map['softwareConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuntimeSoftwareConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualMachine: (() { final guardedValue = map['virtualMachine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuntimeVirtualMachine.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
