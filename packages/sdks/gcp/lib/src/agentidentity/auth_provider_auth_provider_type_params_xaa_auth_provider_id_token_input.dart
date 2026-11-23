// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthProviderAuthProviderTypeParamsXaaAuthProviderIdTokenInput {
  /// Optional additional claims to include when fetching an ID-JAG, represented as a JSON-encoded string.
  final pulumi.Input<String?>? idJagAdditionalClaims;
  /// The resource name of the ID-JAG auth provider. Format: `projects/{{project}}/locations/{{location}}/authProviders/{{auth_provider}}`
  final pulumi.Input<String?>? idJagAuthProvider;

  /// Creates a new [AuthProviderAuthProviderTypeParamsXaaAuthProviderIdTokenInput].
  /// [idJagAdditionalClaims] Optional additional claims to include when fetching an ID-JAG, represented as a JSON-encoded string.
  /// [idJagAuthProvider] The resource name of the ID-JAG auth provider. Format: `projects/{{project}}/locations/{{location}}/authProviders/{{auth_provider}}`
  const AuthProviderAuthProviderTypeParamsXaaAuthProviderIdTokenInput({
    this.idJagAdditionalClaims,
    this.idJagAuthProvider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idJagAdditionalClaims': ?idJagAdditionalClaims,
      'idJagAuthProvider': ?idJagAuthProvider,
    };
  }

  factory AuthProviderAuthProviderTypeParamsXaaAuthProviderIdTokenInput.fromMap(Map<String, dynamic> map) {
    return AuthProviderAuthProviderTypeParamsXaaAuthProviderIdTokenInput(
      idJagAdditionalClaims: (() { final guardedValue = map['idJagAdditionalClaims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idJagAuthProvider: (() { final guardedValue = map['idJagAuthProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
