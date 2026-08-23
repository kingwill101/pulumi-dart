// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_fulfillment.dart';
import 'environment_text_to_speech_settings.dart';

/// Input properties used for looking up and filtering Environment resources.
class EnvironmentState {
  /// The agent version loaded into this environment. Supported formats:
  /// - projects/&lt;Project ID&gt;/agent/versions/&lt;Version ID&gt;
  /// - projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agent/versions/&lt;Version ID&gt;
  final pulumi.Input<String>? agentVersion;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The developer-provided description for this environment.
  final pulumi.Input<String>? description;
  /// (Required)
  final pulumi.Input<String>? environmentid;
  /// desc
  /// Structure is documented below.
  final pulumi.Input<EnvironmentFulfillment>? fulfillment;
  /// (Optional)
  final pulumi.Input<String>? location;
  /// The unique identifier of this agent environment.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The state of this environment.
  final pulumi.Input<String>? state;
  /// Text to speech settings for this environment.
  /// Structure is documented below.
  final pulumi.Input<EnvironmentTextToSpeechSettings>? textToSpeechSettings;

  /// Creates a new [EnvironmentState].
  /// [agentVersion] The agent version loaded into this environment. Supported formats:
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The developer-provided description for this environment.
  /// [environmentid] (Required)
  /// [fulfillment] desc
  /// [location] (Optional)
  /// [name] The unique identifier of this agent environment.
  /// [project] The ID of the project in which the resource belongs.
  /// [state] The state of this environment.
  /// [textToSpeechSettings] Text to speech settings for this environment.
  const EnvironmentState({
    this.agentVersion,
    this.deletionPolicy,
    this.description,
    this.environmentid,
    this.fulfillment,
    this.location,
    this.name,
    this.project,
    this.state,
    this.textToSpeechSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentVersion': ?agentVersion,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'environmentid': ?environmentid,
      'fulfillment': ?pulumi.Input.mapOptionalInputValue<EnvironmentFulfillment, Map<String, dynamic>>(fulfillment, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'state': ?state,
      'textToSpeechSettings': ?pulumi.Input.mapOptionalInputValue<EnvironmentTextToSpeechSettings, Map<String, dynamic>>(textToSpeechSettings, (value) => value.toMap()),
    };
  }

  factory EnvironmentState.fromMap(Map<String, dynamic> map) {
    return EnvironmentState(
      agentVersion: (() { final guardedValue = map['agentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentid: (() { final guardedValue = map['environmentid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fulfillment: (() { final guardedValue = map['fulfillment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentFulfillment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      textToSpeechSettings: (() { final guardedValue = map['textToSpeechSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentTextToSpeechSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
