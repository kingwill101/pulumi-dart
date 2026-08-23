import 'package:pulumi/pulumi.dart' as pulumi;
import '../index/my_enum.dart';
import 'provider_args.dart';

class ProviderProvider extends pulumi.ProviderResource {
  late final pulumi.Output<MyEnum> aEnum;
  late final pulumi.Output<String> aString;

  /// Creates a new [ProviderProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderProvider]. {@macro pulumi_providers_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderProvider(
    String name, {
    ProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'config-enum',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '41.0.0').merge(options),
        ) {
    aEnum = registerOutput<MyEnum>('aEnum', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MyEnum.fromValue(guardedValue as String); });
    aString = registerOutput<String>('aString');
  }
}
