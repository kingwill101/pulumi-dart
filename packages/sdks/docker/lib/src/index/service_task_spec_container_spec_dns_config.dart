// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTaskSpecContainerSpecDnsConfig {
  /// The IP addresses of the name servers
  final pulumi.Input<List<String>> nameservers;
  /// A list of internal resolver variables to be modified (e.g., `debug`, `ndots:3`, etc.)
  final pulumi.Input<List<String>>? options;
  /// A search list for host-name lookup
  final pulumi.Input<List<String>>? searches;

  /// Creates a new [ServiceTaskSpecContainerSpecDnsConfig].
  /// [nameservers] The IP addresses of the name servers
  /// [options] A list of internal resolver variables to be modified (e.g., `debug`, `ndots:3`, etc.)
  /// [searches] A search list for host-name lookup
  ServiceTaskSpecContainerSpecDnsConfig({
    required this.nameservers,
    this.options,
    this.searches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nameservers': nameservers,
      'options': ?options,
      'searches': ?searches,
    };
  }

  factory ServiceTaskSpecContainerSpecDnsConfig.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecContainerSpecDnsConfig(
      nameservers: ((map['nameservers'] as List).cast<String>()).input(),
      options: map['options'] == null ? null : ((map['options'] as List).cast<String>()).input(),
      searches: map['searches'] == null ? null : ((map['searches'] as List).cast<String>()).input(),
    );
  }
}

