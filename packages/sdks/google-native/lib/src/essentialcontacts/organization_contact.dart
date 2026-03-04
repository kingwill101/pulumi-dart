import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_contact_args.dart';

/// Adds a new contact for a resource.
/// Auto-naming is currently not supported for this resource.
class OrganizationContact extends pulumi.CustomResource {
  /// The email address to send notifications to. The email address does not need to be a Google Account.
  late final pulumi.Output<String> email;

  /// The preferred language for notifications, as a ISO 639-1 language code. See [Supported languages](https://cloud.google.com/resource-manager/docs/managing-notification-contacts#supported-languages) for a list of supported languages.
  late final pulumi.Output<String> languageTag;

  /// The identifier for the contact. Format: {resource_type}/{resource_id}/contacts/{contact_id}
  late final pulumi.Output<String> name;

  /// The categories of notifications that the contact will receive communications for.
  late final pulumi.Output<List<String>> notificationCategorySubscriptions;
  late final pulumi.Output<String> organizationId;

  /// The last time the validation_state was updated, either manually or automatically. A contact is considered stale if its validation state was updated more than 1 year ago.
  late final pulumi.Output<String> validateTime;

  /// The validity of the contact. A contact is considered valid if it is the correct recipient for notifications for a particular resource.
  late final pulumi.Output<String> validationState;

  /// Creates a new [OrganizationContact].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationContact]. {@macro pulumi_essentialcontacts_v1_organization_contact_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationContact(
    String name, {
    OrganizationContactArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:essentialcontacts/v1:OrganizationContact',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    email = registerOutput<String>('email');
    languageTag = registerOutput<String>('languageTag');
    this.name = registerOutput<String>('name');
    notificationCategorySubscriptions = registerOutput<List<String>>(
      'notificationCategorySubscriptions',
    );
    organizationId = registerOutput<String>('organizationId');
    validateTime = registerOutput<String>('validateTime');
    validationState = registerOutput<String>('validationState');
  }
}
