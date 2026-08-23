// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeDataProtectionAdvancedRansomware {
  /// Enable or disable the Advanced Ransomware Protection feature.
  ///
  /// &gt; **Note:** Advanced Ransomware Protection is currently in preview and requires feature registration. For performance considerations and supported regions, please refer to the [Azure documentation](https://learn.microsoft.com/en-us/azure/azure-netapp-files/ransomware-configure).
  ///
  /// &gt; **Note:** It is recommended to enable no more than five volumes per Azure region with ARP to mitigate performance issues, and to increase QoS capacity by 5 to 10 percent due to potential performance impacts.
  final pulumi.Input<bool> protectionEnabled;

  /// Creates a new [VolumeDataProtectionAdvancedRansomware].
  /// [protectionEnabled] Enable or disable the Advanced Ransomware Protection feature.
  const VolumeDataProtectionAdvancedRansomware({
    required this.protectionEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protectionEnabled': protectionEnabled,
    };
  }

  factory VolumeDataProtectionAdvancedRansomware.fromMap(Map<String, dynamic> map) {
    return VolumeDataProtectionAdvancedRansomware(
      protectionEnabled: pulumi.Input.fromValue(map['protectionEnabled'] as bool),
    );
  }
}
