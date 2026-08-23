import 'package:pulumi/pulumi.dart' as pulumi;
import 'gate_args.dart';

/// Creates a new change gate for an entity in the organization. Change gates enforce approval workflows by requiring one or more approvals before infrastructure changes can be applied to the protected resource.
class Gate extends pulumi.CustomResource {
  /// Whether the change gate is enabled
  late final pulumi.Output<bool> enabled;
  /// Unique identifier of the change gate
  late final pulumi.Output<String> gateID;
  /// Name of the change gate
  late final pulumi.Output<String> name;
  /// Rule configuration for the gate
  late final pulumi.Output<dynamic> rule;
  /// Target configuration for the gate
  late final pulumi.Output<dynamic> target;

  /// Creates a new [Gate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Gate]. {@macro pulumi_api_gate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Gate(
    String name, {
    GateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api:Gate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enabled = registerOutput<bool>('enabled');
    gateID = registerOutput<String>('gateID');
    this.name = registerOutput<String>('name');
    rule = registerOutput<dynamic>('rule');
    target = registerOutput<dynamic>('target');
  }
}
