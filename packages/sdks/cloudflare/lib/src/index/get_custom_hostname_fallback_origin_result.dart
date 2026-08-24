// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCustomHostnameFallbackOrigin.
class GetCustomHostnameFallbackOriginResult {
  /// This is the time the fallback origin was created.
  final String? createdAt;
  /// These are errors that were encountered while trying to activate a fallback origin.
  final List<String>? errors;
  /// Identifier.
  final String? id;
  /// Your origin hostname that requests to your custom hostnames will be sent to.
  final String? origin;
  /// Status of the fallback origin's activation.
  /// Available values: "initializing", "pending*deployment", "pending*deletion", "active", "deployment*timed*out", "deletion*timed*out".
  final String? status;
  /// This is the time the fallback origin was updated.
  final String? updatedAt;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetCustomHostnameFallbackOriginResult].
  /// [createdAt] This is the time the fallback origin was created.
  /// [errors] These are errors that were encountered while trying to activate a fallback origin.
  /// [id] Identifier.
  /// [origin] Your origin hostname that requests to your custom hostnames will be sent to.
  /// [status] Status of the fallback origin's activation.
  /// [updatedAt] This is the time the fallback origin was updated.
  /// [zoneId] Identifier.
  const GetCustomHostnameFallbackOriginResult({
    this.createdAt,
    this.errors,
    this.id,
    this.origin,
    this.status,
    this.updatedAt,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'errors': ?errors,
      'id': ?id,
      'origin': ?origin,
      'status': ?status,
      'updatedAt': ?updatedAt,
      'zoneId': ?zoneId,
    };
  }

  factory GetCustomHostnameFallbackOriginResult.fromMap(Map<String, dynamic> map) {
    return GetCustomHostnameFallbackOriginResult(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      origin: (() { final guardedValue = map['origin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
