// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_file_osconfig_v1alpha.dart';

/// An MSI package. MSI packages only support INSTALLED state.
class OSPolicyResourcePackageResourceMSIOsconfigV1alpha {
  /// Additional properties to use during installation. This should be in the format of Property=Setting. Appended to the defaults of `ACTION=INSTALL REBOOT=ReallySuppress`.
  final pulumi.Input<List<String>>? properties;

  /// The MSI package.
  final pulumi.Input<OSPolicyResourceFileOsconfigV1alpha> source;

  /// Creates a new [OSPolicyResourcePackageResourceMSIOsconfigV1alpha].
  /// [properties] Additional properties to use during installation. This should be in the format of Property=Setting. Appended to the defaults of `ACTION=INSTALL REBOOT=ReallySuppress`.
  /// [source] The MSI package.
  OSPolicyResourcePackageResourceMSIOsconfigV1alpha({
    this.properties,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties,
      'source':
          pulumi.Input.mapInputValue<
            OSPolicyResourceFileOsconfigV1alpha,
            Map<String, dynamic>
          >(source, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourcePackageResourceMSIOsconfigV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return OSPolicyResourcePackageResourceMSIOsconfigV1alpha(
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      source: pulumi.Input.fromValue(
        OSPolicyResourceFileOsconfigV1alpha.fromMap(
          (map['source']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
