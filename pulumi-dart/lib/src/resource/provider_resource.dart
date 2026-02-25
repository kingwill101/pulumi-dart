import 'package:pulumi/src/resource/custom_resource.dart';

import '../input.dart';

class ProviderResource extends CustomResource {
  final String package;
  String? registrationId;

  ProviderResource(
    this.package,
    String name,
    Inputs? args,
    CustomResourceOptions? options,
  ) : super(
        'pulumi:providers:$package',
        name,
        args ?? {},
        options ?? CustomResourceOptions(),
      );

  static Future<String?> register(ProviderResource? providerResource) async {
    if (providerResource == null) return null;

    if (providerResource.registrationId == null) {
      final urn = await providerResource.urn.getValue();
      final idData = await providerResource.id.getData();
      final id = idData.isKnown ? (idData.value ?? '') : '';
      providerResource.registrationId = "$urn::$id";
    }

    return providerResource.registrationId;
  }
}
