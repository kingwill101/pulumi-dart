// ignore_for_file: unused_element, unnecessary_cast


/// Network describes the network configuration for a `WorkerPool`.
class NetworkConfigResponseCloudbuildV1alpha2 {
  /// Immutable. The network definition that the workers are peered to. If this section is left empty, the workers will be peered to WorkerPool.project_id on the default network. Must be in the format `projects/{project}/global/networks/{network}`, where {project} is a project number, such as `12345`, and {network} is the name of a VPC network in the project.
  final String peeredNetwork;

  /// Creates a new [NetworkConfigResponseCloudbuildV1alpha2].
  /// [peeredNetwork] Immutable. The network definition that the workers are peered to. If this section is left empty, the workers will be peered to WorkerPool.project_id on the default network. Must be in the format `projects/{project}/global/networks/{network}`, where {project} is a project number, such as `12345`, and {network} is the name of a VPC network in the project.
  NetworkConfigResponseCloudbuildV1alpha2({
    required this.peeredNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peeredNetwork': peeredNetwork,
    };
  }

  factory NetworkConfigResponseCloudbuildV1alpha2.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponseCloudbuildV1alpha2(
      peeredNetwork: map['peeredNetwork'] as String,
    );
  }
}

