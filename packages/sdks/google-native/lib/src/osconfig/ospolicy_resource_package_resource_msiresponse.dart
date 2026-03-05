// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_file_response.dart';

/// An MSI package. MSI packages only support INSTALLED state.
class OSPolicyResourcePackageResourceMSIResponse {
  /// Additional properties to use during installation. This should be in the format of Property=Setting. Appended to the defaults of `ACTION=INSTALL REBOOT=ReallySuppress`.
  final pulumi.Input<List<String>> properties;
  /// The MSI package.
  final pulumi.Input<OSPolicyResourceFileResponse> source;

  /// Creates a new [OSPolicyResourcePackageResourceMSIResponse].
  /// [properties] Additional properties to use during installation. This should be in the format of Property=Setting. Appended to the defaults of `ACTION=INSTALL REBOOT=ReallySuppress`.
  /// [source] The MSI package.
  OSPolicyResourcePackageResourceMSIResponse({
    required this.properties,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': properties,
      'source': pulumi.Input.mapInputValue<OSPolicyResourceFileResponse, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourcePackageResourceMSIResponse.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceMSIResponse(
      properties: pulumi.Input.fromValue((map['properties'] as List).cast<String>()),
      source: pulumi.Input.fromValue(OSPolicyResourceFileResponse.fromMap((map['source']! as Map).cast<String, dynamic>())),
    );
  }
}

