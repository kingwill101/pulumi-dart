// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_without_members_dynamic_membership.dart';

/// Input properties used for looking up and filtering GroupWithoutMembers resources.
class GroupWithoutMembersState {
  /// The object IDs of administrative units in which the group is a member. If specified, new groups will be created in the scope of the first administrative unit and added to the others. If empty, new groups will be created at the tenant level.
  ///
  /// &gt; **Caution** When using the azuread.AdministrativeUnitMember resource, or the `members` property of the azuread.AdministrativeUnit resource, to manage Administrative Unit membership for a group, you will need to use an `ignore_changes = [administrative_unit_ids]` lifecycle meta argument for the `azuread.Group` resource, in order to avoid a persistent diff.
  final pulumi.Input<List<String>>? administrativeUnitIds;
  /// Indicates whether this group can be assigned to an Azure Active Directory role. Defaults to `false`. Can only be set to `true` for security-enabled groups. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? assignableToRole;
  /// Indicates whether new members added to the group will be auto-subscribed to receive email notifications. Can only be set for Unified groups.
  ///
  /// &gt; **Known Permissions Issue** The `auto_subscribe_new_members` property can only be set when authenticating as a Member user of the tenant and _not_ when authenticating as a Guest user or as a service principal. Please see the [Microsoft Graph Known Issues](https://docs.microsoft.com/en-us/graph/known-issues#groups) documentation.
  final pulumi.Input<bool>? autoSubscribeNewMembers;
  /// A set of behaviors for a Microsoft 365 group. Possible values are `AllowOnlyMembersToPost`, `HideGroupInOutlook`, `SkipExchangeInstantOn`, `SubscribeMembersToCalendarEventsDisabled`, `SubscribeNewGroupMembers` and `WelcomeEmailDisabled`. See [official documentation](https://docs.microsoft.com/en-us/graph/group-set-options) for more details. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? behaviors;
  /// The description for the group.
  final pulumi.Input<String>? description;
  /// The display name for the group.
  final pulumi.Input<String>? displayName;
  /// A `dynamic_membership` block as documented below. Required when `types` contains `DynamicMembership`. Cannot be used with the `members` property.
  final pulumi.Input<GroupWithoutMembersDynamicMembership>? dynamicMembership;
  /// Indicates whether people external to the organization can send messages to the group. Can only be set for Unified groups.
  ///
  /// &gt; **Known Permissions Issue** The `external_senders_allowed` property can only be set when authenticating as a Member user of the tenant and _not_ when authenticating as a Guest user or as a service principal. Please see the [Microsoft Graph Known Issues](https://docs.microsoft.com/en-us/graph/known-issues#groups) documentation.
  final pulumi.Input<bool>? externalSendersAllowed;
  /// Indicates whether the group is displayed in certain parts of the Outlook user interface: in the Address Book, in address lists for selecting message recipients, and in the Browse Groups dialog for searching groups. Can only be set for Unified groups.
  ///
  /// &gt; **Known Permissions Issue** The `hide_from_address_lists` property can only be set when authenticating as a Member user of the tenant and _not_ when authenticating as a Guest user or as a service principal. Please see the [Microsoft Graph Known Issues](https://docs.microsoft.com/en-us/graph/known-issues#groups) documentation.
  final pulumi.Input<bool>? hideFromAddressLists;
  /// Indicates whether the group is displayed in Outlook clients, such as Outlook for Windows and Outlook on the web. Can only be set for Unified groups.
  ///
  /// &gt; **Known Permissions Issue** The `hide_from_outlook_clients` property can only be set when authenticating as a Member user of the tenant and _not_ when authenticating as a Guest user or as a service principal. Please see the [Microsoft Graph Known Issues](https://docs.microsoft.com/en-us/graph/known-issues#groups) documentation.
  final pulumi.Input<bool>? hideFromOutlookClients;
  /// The SMTP address for the group.
  final pulumi.Input<String>? mail;
  /// Whether the group is a mail enabled, with a shared group mailbox. At least one of `mail_enabled` or `security_enabled` must be specified. Only Microsoft 365 groups can be mail enabled (see the `types` property).
  final pulumi.Input<bool>? mailEnabled;
  /// The mail alias for the group, unique in the organisation. Required for mail-enabled groups. Changing this forces a new resource to be created.
  final pulumi.Input<String>? mailNickname;
  /// The object ID of the group.
  final pulumi.Input<String>? objectId;
  /// The on-premises FQDN, also called dnsDomainName, synchronised from the on-premises directory when Azure AD Connect is used.
  final pulumi.Input<String>? onpremisesDomainName;
  /// The on-premises group type that the AAD group will be written as, when writeback is enabled. Possible values are `UniversalDistributionGroup`, `UniversalMailEnabledSecurityGroup`, or `UniversalSecurityGroup`.
  final pulumi.Input<String>? onpremisesGroupType;
  /// The on-premises NetBIOS name, synchronised from the on-premises directory when Azure AD Connect is used.
  final pulumi.Input<String>? onpremisesNetbiosName;
  /// The on-premises SAM account name, synchronised from the on-premises directory when Azure AD Connect is used.
  final pulumi.Input<String>? onpremisesSamAccountName;
  /// The on-premises security identifier (SID), synchronised from the on-premises directory when Azure AD Connect is used.
  final pulumi.Input<String>? onpremisesSecurityIdentifier;
  /// Whether this group is synchronised from an on-premises directory (`true`), no longer synchronised (`false`), or has never been synchronised (`null`).
  final pulumi.Input<bool>? onpremisesSyncEnabled;
  /// A set of object IDs of principals that will be granted ownership of the group. Supported object types are users or service principals. By default, the principal being used to execute Terraform is assigned as the sole owner. Groups cannot be created with no owners or have all their owners removed.
  ///
  /// &gt; **Group Ownership**  It's recommended to always specify one or more group owners, including the principal being used to execute Terraform, such as in the example above. When removing group owners, if a user principal has been assigned ownership, the last user cannot be removed as an owner. Microsoft 365 groups are required to always have at least one owner which _must be a user_ (i.e. not a service principal).
  final pulumi.Input<List<String>>? owners;
  /// The preferred language for a Microsoft 365 group, in ISO 639-1 notation.
  final pulumi.Input<String>? preferredLanguage;
  /// If `true`, will return an error if an existing group is found with the same name. Defaults to `false`.
  final pulumi.Input<bool>? preventDuplicateNames;
  /// A set of provisioning options for a Microsoft 365 group. The only supported value is `Team`. See [official documentation](https://docs.microsoft.com/en-us/graph/group-set-options) for details. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? provisioningOptions;
  /// List of email addresses for the group that direct to the same group mailbox.
  final pulumi.Input<List<String>>? proxyAddresses;
  /// Whether the group is a security group for controlling access to in-app resources. At least one of `security_enabled` or `mail_enabled` must be specified. A Microsoft 365 group can be security enabled _and_ mail enabled (see the `types` property).
  final pulumi.Input<bool>? securityEnabled;
  /// The colour theme for a Microsoft 365 group. Possible values are `Blue`, `Green`, `Orange`, `Pink`, `Purple`, `Red` or `Teal`. By default, no theme is set.
  final pulumi.Input<String>? theme;
  /// A set of group types to configure for the group. Supported values are `DynamicMembership`, which denotes a group with dynamic membership, and `Unified`, which specifies a Microsoft 365 group. Required when `mail_enabled` is true. Changing this forces a new resource to be created.
  ///
  /// &gt; **Supported Group Types** At present, only security groups and Microsoft 365 groups can be created or managed with this resource. Distribution groups and mail-enabled security groups are not supported. Microsoft 365 groups can be security-enabled.
  final pulumi.Input<List<String>>? types;
  /// The group join policy and group content visibility. Possible values are `Private`, `Public`, or `Hiddenmembership`. Only Microsoft 365 groups can have `Hiddenmembership` visibility and this value must be set when the group is created. By default, security groups will receive `Private` visibility and Microsoft 365 groups will receive `Public` visibility.
  ///
  /// &gt; **Group Name Uniqueness** Group names are not unique within Azure Active Directory. Use the `prevent_duplicate_names` argument to check for existing groups if you want to avoid name collisions.
  final pulumi.Input<String>? visibility;
  /// Whether the group will be written back to the configured on-premises Active Directory when Azure AD Connect is used.
  final pulumi.Input<bool>? writebackEnabled;

  /// Creates a new [GroupWithoutMembersState].
  /// [administrativeUnitIds] The object IDs of administrative units in which the group is a member. If specified, new groups will be created in the scope of the first administrative unit and added to the others. If empty, new groups will be created at the tenant level.
  /// [assignableToRole] Indicates whether this group can be assigned to an Azure Active Directory role. Defaults to `false`. Can only be set to `true` for security-enabled groups. Changing this forces a new resource to be created.
  /// [autoSubscribeNewMembers] Indicates whether new members added to the group will be auto-subscribed to receive email notifications. Can only be set for Unified groups.
  /// [behaviors] A set of behaviors for a Microsoft 365 group. Possible values are `AllowOnlyMembersToPost`, `HideGroupInOutlook`, `SkipExchangeInstantOn`, `SubscribeMembersToCalendarEventsDisabled`, `SubscribeNewGroupMembers` and `WelcomeEmailDisabled`. See [official documentation](https://docs.microsoft.com/en-us/graph/group-set-options) for more details. Changing this forces a new resource to be created.
  /// [description] The description for the group.
  /// [displayName] The display name for the group.
  /// [dynamicMembership] A `dynamic_membership` block as documented below. Required when `types` contains `DynamicMembership`. Cannot be used with the `members` property.
  /// [externalSendersAllowed] Indicates whether people external to the organization can send messages to the group. Can only be set for Unified groups.
  /// [hideFromAddressLists] Indicates whether the group is displayed in certain parts of the Outlook user interface: in the Address Book, in address lists for selecting message recipients, and in the Browse Groups dialog for searching groups. Can only be set for Unified groups.
  /// [hideFromOutlookClients] Indicates whether the group is displayed in Outlook clients, such as Outlook for Windows and Outlook on the web. Can only be set for Unified groups.
  /// [mail] The SMTP address for the group.
  /// [mailEnabled] Whether the group is a mail enabled, with a shared group mailbox. At least one of `mail_enabled` or `security_enabled` must be specified. Only Microsoft 365 groups can be mail enabled (see the `types` property).
  /// [mailNickname] The mail alias for the group, unique in the organisation. Required for mail-enabled groups. Changing this forces a new resource to be created.
  /// [objectId] The object ID of the group.
  /// [onpremisesDomainName] The on-premises FQDN, also called dnsDomainName, synchronised from the on-premises directory when Azure AD Connect is used.
  /// [onpremisesGroupType] The on-premises group type that the AAD group will be written as, when writeback is enabled. Possible values are `UniversalDistributionGroup`, `UniversalMailEnabledSecurityGroup`, or `UniversalSecurityGroup`.
  /// [onpremisesNetbiosName] The on-premises NetBIOS name, synchronised from the on-premises directory when Azure AD Connect is used.
  /// [onpremisesSamAccountName] The on-premises SAM account name, synchronised from the on-premises directory when Azure AD Connect is used.
  /// [onpremisesSecurityIdentifier] The on-premises security identifier (SID), synchronised from the on-premises directory when Azure AD Connect is used.
  /// [onpremisesSyncEnabled] Whether this group is synchronised from an on-premises directory (`true`), no longer synchronised (`false`), or has never been synchronised (`null`).
  /// [owners] A set of object IDs of principals that will be granted ownership of the group. Supported object types are users or service principals. By default, the principal being used to execute Terraform is assigned as the sole owner. Groups cannot be created with no owners or have all their owners removed.
  /// [preferredLanguage] The preferred language for a Microsoft 365 group, in ISO 639-1 notation.
  /// [preventDuplicateNames] If `true`, will return an error if an existing group is found with the same name. Defaults to `false`.
  /// [provisioningOptions] A set of provisioning options for a Microsoft 365 group. The only supported value is `Team`. See [official documentation](https://docs.microsoft.com/en-us/graph/group-set-options) for details. Changing this forces a new resource to be created.
  /// [proxyAddresses] List of email addresses for the group that direct to the same group mailbox.
  /// [securityEnabled] Whether the group is a security group for controlling access to in-app resources. At least one of `security_enabled` or `mail_enabled` must be specified. A Microsoft 365 group can be security enabled _and_ mail enabled (see the `types` property).
  /// [theme] The colour theme for a Microsoft 365 group. Possible values are `Blue`, `Green`, `Orange`, `Pink`, `Purple`, `Red` or `Teal`. By default, no theme is set.
  /// [types] A set of group types to configure for the group. Supported values are `DynamicMembership`, which denotes a group with dynamic membership, and `Unified`, which specifies a Microsoft 365 group. Required when `mail_enabled` is true. Changing this forces a new resource to be created.
  /// [visibility] The group join policy and group content visibility. Possible values are `Private`, `Public`, or `Hiddenmembership`. Only Microsoft 365 groups can have `Hiddenmembership` visibility and this value must be set when the group is created. By default, security groups will receive `Private` visibility and Microsoft 365 groups will receive `Public` visibility.
  /// [writebackEnabled] Whether the group will be written back to the configured on-premises Active Directory when Azure AD Connect is used.
  GroupWithoutMembersState({
    this.administrativeUnitIds,
    this.assignableToRole,
    this.autoSubscribeNewMembers,
    this.behaviors,
    this.description,
    this.displayName,
    this.dynamicMembership,
    this.externalSendersAllowed,
    this.hideFromAddressLists,
    this.hideFromOutlookClients,
    this.mail,
    this.mailEnabled,
    this.mailNickname,
    this.objectId,
    this.onpremisesDomainName,
    this.onpremisesGroupType,
    this.onpremisesNetbiosName,
    this.onpremisesSamAccountName,
    this.onpremisesSecurityIdentifier,
    this.onpremisesSyncEnabled,
    this.owners,
    this.preferredLanguage,
    this.preventDuplicateNames,
    this.provisioningOptions,
    this.proxyAddresses,
    this.securityEnabled,
    this.theme,
    this.types,
    this.visibility,
    this.writebackEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeUnitIds': ?administrativeUnitIds,
      'assignableToRole': ?assignableToRole,
      'autoSubscribeNewMembers': ?autoSubscribeNewMembers,
      'behaviors': ?behaviors,
      'description': ?description,
      'displayName': ?displayName,
      'dynamicMembership': ?pulumi.Input.mapOptionalInputValue<GroupWithoutMembersDynamicMembership, Map<String, dynamic>>(dynamicMembership, (value) => value.toMap()),
      'externalSendersAllowed': ?externalSendersAllowed,
      'hideFromAddressLists': ?hideFromAddressLists,
      'hideFromOutlookClients': ?hideFromOutlookClients,
      'mail': ?mail,
      'mailEnabled': ?mailEnabled,
      'mailNickname': ?mailNickname,
      'objectId': ?objectId,
      'onpremisesDomainName': ?onpremisesDomainName,
      'onpremisesGroupType': ?onpremisesGroupType,
      'onpremisesNetbiosName': ?onpremisesNetbiosName,
      'onpremisesSamAccountName': ?onpremisesSamAccountName,
      'onpremisesSecurityIdentifier': ?onpremisesSecurityIdentifier,
      'onpremisesSyncEnabled': ?onpremisesSyncEnabled,
      'owners': ?owners,
      'preferredLanguage': ?preferredLanguage,
      'preventDuplicateNames': ?preventDuplicateNames,
      'provisioningOptions': ?provisioningOptions,
      'proxyAddresses': ?proxyAddresses,
      'securityEnabled': ?securityEnabled,
      'theme': ?theme,
      'types': ?types,
      'visibility': ?visibility,
      'writebackEnabled': ?writebackEnabled,
    };
  }

  factory GroupWithoutMembersState.fromMap(Map<String, dynamic> map) {
    return GroupWithoutMembersState(
      administrativeUnitIds: (() { final guardedValue = map['administrativeUnitIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      assignableToRole: (() { final guardedValue = map['assignableToRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoSubscribeNewMembers: (() { final guardedValue = map['autoSubscribeNewMembers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      behaviors: (() { final guardedValue = map['behaviors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dynamicMembership: (() { final guardedValue = map['dynamicMembership']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupWithoutMembersDynamicMembership.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      externalSendersAllowed: (() { final guardedValue = map['externalSendersAllowed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hideFromAddressLists: (() { final guardedValue = map['hideFromAddressLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hideFromOutlookClients: (() { final guardedValue = map['hideFromOutlookClients']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mail: (() { final guardedValue = map['mail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mailEnabled: (() { final guardedValue = map['mailEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mailNickname: (() { final guardedValue = map['mailNickname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onpremisesDomainName: (() { final guardedValue = map['onpremisesDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onpremisesGroupType: (() { final guardedValue = map['onpremisesGroupType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onpremisesNetbiosName: (() { final guardedValue = map['onpremisesNetbiosName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onpremisesSamAccountName: (() { final guardedValue = map['onpremisesSamAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onpremisesSecurityIdentifier: (() { final guardedValue = map['onpremisesSecurityIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onpremisesSyncEnabled: (() { final guardedValue = map['onpremisesSyncEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      owners: (() { final guardedValue = map['owners']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      preferredLanguage: (() { final guardedValue = map['preferredLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preventDuplicateNames: (() { final guardedValue = map['preventDuplicateNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      provisioningOptions: (() { final guardedValue = map['provisioningOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      proxyAddresses: (() { final guardedValue = map['proxyAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      securityEnabled: (() { final guardedValue = map['securityEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      theme: (() { final guardedValue = map['theme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      writebackEnabled: (() { final guardedValue = map['writebackEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

