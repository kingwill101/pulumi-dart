// ignore_for_file: unused_element, unnecessary_cast


class ServiceTaskSpecContainerSpecDnsConfig {
  /// The IP addresses of the name servers
  final List<String> nameservers;
  /// A list of internal resolver variables to be modified (e.g., `debug`, `ndots:3`, etc.)
  final List<String>? options;
  /// A search list for host-name lookup
  final List<String>? searches;

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
      nameservers: (map['nameservers'] as List).cast<String>(),
      options: map['options'] == null ? null : (map['options'] as List).cast<String>(),
      searches: map['searches'] == null ? null : (map['searches'] as List).cast<String>(),
    );
  }
}

