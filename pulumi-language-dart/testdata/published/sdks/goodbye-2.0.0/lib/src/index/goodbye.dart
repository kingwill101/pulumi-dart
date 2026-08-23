import 'package:pulumi/pulumi.dart' as pulumi;
import '../internal/package_registration.dart' as package_registration;

class Goodbye extends pulumi.CustomResource {
  late final pulumi.Output<String> parameterValue;

  /// Creates a new [Goodbye].
  /// [name] The Pulumi resource name.
  /// [args] The raw input arguments for this resource.
  /// [options] Resource options controlling this resource's behavior.
  Goodbye(
    String name, {
    Map<String, dynamic>? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'goodbye:index:Goodbye',
          name,
          pulumi.Input.mapToInputs(args ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
          registerPackageRequest: package_registration.registerPackageRequest,
        ) {
    parameterValue = registerOutput<String>('parameterValue');
  }

  /// Creates a typed reference to an existing [Goodbye] resource.
  Goodbye.reference(String urn)
    : super(
        'goodbye:index:Goodbye',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          registerPackageRequest: package_registration.registerPackageRequest,
        isResourceReference: true,
      ) {
    parameterValue = registerOutput<String>('parameterValue');
  }
}
