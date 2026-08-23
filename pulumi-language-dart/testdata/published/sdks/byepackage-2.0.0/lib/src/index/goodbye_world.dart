import 'package:pulumi/pulumi.dart' as pulumi;
import '../internal/package_registration.dart' as package_registration;

class GoodbyeWorld extends pulumi.CustomResource {
  late final pulumi.Output<String> parameterValue;

  /// Creates a new [GoodbyeWorld].
  /// [name] The Pulumi resource name.
  /// [args] The raw input arguments for this resource.
  /// [options] Resource options controlling this resource's behavior.
  GoodbyeWorld(
    String name, {
    Map<String, dynamic>? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'byepackage:index:GoodbyeWorld',
          name,
          pulumi.Input.mapToInputs(args ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
          registerPackageRequest: package_registration.registerPackageRequest,
        ) {
    parameterValue = registerOutput<String>('parameterValue');
  }

  /// Creates a typed reference to an existing [GoodbyeWorld] resource.
  GoodbyeWorld.reference(String urn)
    : super(
        'byepackage:index:GoodbyeWorld',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          registerPackageRequest: package_registration.registerPackageRequest,
        isResourceReference: true,
      ) {
    parameterValue = registerOutput<String>('parameterValue');
  }
}
