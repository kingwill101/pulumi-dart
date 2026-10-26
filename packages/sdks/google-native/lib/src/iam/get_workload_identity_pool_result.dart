// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkloadIdentityPool.
class GetWorkloadIdentityPoolResult {
  /// A description of the pool. Cannot exceed 256 characters.
  final String? description;
  /// Whether the pool is disabled. You cannot use a disabled pool to exchange tokens, or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again.
  final bool? disabled;
  /// A display name for the pool. Cannot exceed 32 characters.
  final String? displayName;
  /// Time after which the workload identity pool will be permanently purged and cannot be recovered.
  final String? expireTime;
  /// The resource name of the pool.
  final String? name;
  /// The state of the pool.
  final String? state;

  /// Creates a new [GetWorkloadIdentityPoolResult].
  /// [description] A description of the pool. Cannot exceed 256 characters.
  /// [disabled] Whether the pool is disabled. You cannot use a disabled pool to exchange tokens, or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again.
  /// [displayName] A display name for the pool. Cannot exceed 32 characters.
  /// [expireTime] Time after which the workload identity pool will be permanently purged and cannot be recovered.
  /// [name] The resource name of the pool.
  /// [state] The state of the pool.
  const GetWorkloadIdentityPoolResult({
    this.description,
    this.disabled,
    this.displayName,
    this.expireTime,
    this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'expireTime': ?expireTime,
      'name': ?name,
      'state': ?state,
    };
  }

  factory GetWorkloadIdentityPoolResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
