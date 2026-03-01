// ignore_for_file: unused_element, unnecessary_cast


/// Details about how a build should be executed on a `WorkerPool`. See [running builds in a private pool](https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool) for more information.
class PoolOptionResponse {
  /// The `WorkerPool` resource to execute the build on. You must have `cloudbuild.workerpools.use` on the project hosting the WorkerPool. Format projects/{project}/locations/{location}/workerPools/{workerPoolId}
  final String name;

  /// Creates a new [PoolOptionResponse].
  /// [name] The `WorkerPool` resource to execute the build on. You must have `cloudbuild.workerpools.use` on the project hosting the WorkerPool. Format projects/{project}/locations/{location}/workerPools/{workerPoolId}
  PoolOptionResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory PoolOptionResponse.fromMap(Map<String, dynamic> map) {
    return PoolOptionResponse(
      name: map['name'] as String,
    );
  }
}

