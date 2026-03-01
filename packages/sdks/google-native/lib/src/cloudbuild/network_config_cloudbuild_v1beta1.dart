// ignore_for_file: unused_element, unnecessary_cast


/// Network describes the network configuration for a `WorkerPool`.
class NetworkConfigCloudbuildV1beta1 {
  /// Immutable. The network definition that the workers are peered to. If this section is left empty, the workers will be peered to `WorkerPool.project_id` on the service producer network. Must be in the format `projects/{project}/global/networks/{network}`, where `{project}` is a project number, such as `12345`, and `{network}` is the name of a VPC network in the project. See [Understanding network configuration options](https://cloud.google.com/cloud-build/docs/custom-workers/set-up-custom-worker-pool-environment#understanding_the_network_configuration_options)
  final String peeredNetwork;

  /// Creates a new [NetworkConfigCloudbuildV1beta1].
  /// [peeredNetwork] Immutable. The network definition that the workers are peered to. If this section is left empty, the workers will be peered to `WorkerPool.project_id` on the service producer network. Must be in the format `projects/{project}/global/networks/{network}`, where `{project}` is a project number, such as `12345`, and `{network}` is the name of a VPC network in the project. See [Understanding network configuration options](https://cloud.google.com/cloud-build/docs/custom-workers/set-up-custom-worker-pool-environment#understanding_the_network_configuration_options)
  NetworkConfigCloudbuildV1beta1({
    required this.peeredNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peeredNetwork': peeredNetwork,
    };
  }

  factory NetworkConfigCloudbuildV1beta1.fromMap(Map<String, dynamic> map) {
    return NetworkConfigCloudbuildV1beta1(
      peeredNetwork: map['peeredNetwork'] as String,
    );
  }
}

