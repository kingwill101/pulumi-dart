// ignore_for_file: unused_element, unnecessary_cast


/// Options for manually scaling a model.
class GoogleCloudMlV1ManualScalingResponse {
  /// The number of nodes to allocate for this model. These nodes are always up, starting from the time the model is deployed, so the cost of operating this model will be proportional to `nodes` * number of hours since last billing cycle plus the cost for each prediction performed.
  final int nodes;

  /// Creates a new [GoogleCloudMlV1ManualScalingResponse].
  /// [nodes] The number of nodes to allocate for this model. These nodes are always up, starting from the time the model is deployed, so the cost of operating this model will be proportional to `nodes` * number of hours since last billing cycle plus the cost for each prediction performed.
  GoogleCloudMlV1ManualScalingResponse({
    required this.nodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodes': nodes,
    };
  }

  factory GoogleCloudMlV1ManualScalingResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1ManualScalingResponse(
      nodes: map['nodes'] as int,
    );
  }
}

