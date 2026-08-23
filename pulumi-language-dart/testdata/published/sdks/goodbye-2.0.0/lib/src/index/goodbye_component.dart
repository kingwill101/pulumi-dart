import 'package:pulumi/pulumi.dart' as pulumi;
import '../internal/package_registration.dart' as package_registration;

class GoodbyeComponent extends pulumi.ComponentResource {
  late final pulumi.Output<String?> parameterValue;

  /// Creates a new [GoodbyeComponent].
  /// [name] The Pulumi resource name.
  /// [options] Resource options controlling this resource's behavior.
  GoodbyeComponent(
    String name, {
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'goodbye:index:GoodbyeComponent',
          name,
          null,
          options ?? pulumi.ComponentResourceOptions(),
          registerPackageRequest: package_registration.registerPackageRequest,
          remote: true,
        ) {
    parameterValue = registerOutput<String?>('parameterValue');
  }
}
