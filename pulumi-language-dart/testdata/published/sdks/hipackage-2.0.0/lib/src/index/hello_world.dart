import 'package:pulumi/pulumi.dart' as pulumi;
import '../internal/package_registration.dart' as package_registration;

class HelloWorld extends pulumi.CustomResource {
  late final pulumi.Output<String> parameterValue;

  /// Creates a new [HelloWorld].
  /// [name] The Pulumi resource name.
  /// [args] The raw input arguments for this resource.
  /// [options] Resource options controlling this resource's behavior.
  HelloWorld(
    String name, {
    Map<String, dynamic>? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hipackage:index:HelloWorld',
          name,
          pulumi.Input.mapToInputs(args ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
          registerPackageRequest: package_registration.registerPackageRequest,
        ) {
    parameterValue = registerOutput<String>('parameterValue');
  }

  /// Creates a typed reference to an existing [HelloWorld] resource.
  HelloWorld.reference(String urn)
    : super(
        'hipackage:index:HelloWorld',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          registerPackageRequest: package_registration.registerPackageRequest,
        isResourceReference: true,
      ) {
    parameterValue = registerOutput<String>('parameterValue');
  }
}
