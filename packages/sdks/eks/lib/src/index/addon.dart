import 'package:pulumi/pulumi.dart' as pulumi;
import 'addon_args.dart';

/// Addon manages an EKS add-on.
/// For more information about supported add-ons, see: https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html
class Addon extends pulumi.ComponentResource {
  /// Creates a new [Addon].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Addon]. {@macro pulumi_index_addon_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Addon(
    String name, {
    AddonArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'eks:index:Addon',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.ComponentResourceOptions(),
          remote: true,
        );
}
