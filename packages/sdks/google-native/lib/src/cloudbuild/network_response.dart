// ignore_for_file: unused_element, unnecessary_cast


/// Network describes the GCP network used to create workers in.
class NetworkResponse {
  /// Network on which the workers are created. "default" network is used if empty.
  final String network;
  /// Project id containing the defined network and subnetwork. For a peered VPC, this will be the same as the project_id in which the workers are created. For a shared VPC, this will be the project sharing the network with the project_id project in which workers will be created. For custom workers with no VPC, this will be the same as project_id.
  final String project;
  /// Subnetwork on which the workers are created. "default" subnetwork is used if empty.
  final String subnetwork;

  /// Creates a new [NetworkResponse].
  /// [network] Network on which the workers are created. "default" network is used if empty.
  /// [project] Project id containing the defined network and subnetwork. For a peered VPC, this will be the same as the project_id in which the workers are created. For a shared VPC, this will be the project sharing the network with the project_id project in which workers will be created. For custom workers with no VPC, this will be the same as project_id.
  /// [subnetwork] Subnetwork on which the workers are created. "default" subnetwork is used if empty.
  NetworkResponse({
    required this.network,
    required this.project,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
      'project': project,
      'subnetwork': subnetwork,
    };
  }

  factory NetworkResponse.fromMap(Map<String, dynamic> map) {
    return NetworkResponse(
      network: map['network'] as String,
      project: map['project'] as String,
      subnetwork: map['subnetwork'] as String,
    );
  }
}

