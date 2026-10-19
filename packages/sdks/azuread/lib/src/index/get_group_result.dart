// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_dynamic_membership.dart';

/// Result data returned by getGroup.
class GetGroupResult {
  /// Indicates whether this group can be assigned to an Azure Active Directory role.
  final bool? assignableToRole;
  /// Indicates whether new members added to the group will be auto-subscribed to receive email notifications. Only set for Unified groups.
  final bool? autoSubscribeNewMembers;
  /// A list of behaviors for a Microsoft 365 group, such as `AllowOnlyMembersToPost`, `HideGroupInOutlook`, `SubscribeNewGroupMembers` and `WelcomeEmailDisabled`. See [official documentation](https://docs.microsoft.com/en-us/graph/group-set-options) for more details.
  final List<String>? behaviors;
  /// The optional description of the group.
  final String? description;
  /// The display name for the group.
  final String? displayName;
  /// A `dynamicMembership` block as documented below.
  final List<GetGroupDynamicMembership>? dynamicMemberships;
  /// Indicates whether people external to the organization can send messages to the group. Only set for Unified groups.
  final bool? externalSendersAllowed;
  /// Indicates whether the group is displayed in certain parts of the Outlook user interface: in the Address Book, in address lists for selecting message recipients, and in the Browse Groups dialog for searching groups. Only set for Unified groups.
  final bool? hideFromAddressLists;
  /// Indicates whether the group is displayed in Outlook clients, such as Outlook for Windows and Outlook on the web. Only set for Unified groups.
  final bool? hideFromOutlookClients;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? includeTransitiveMembers;
  /// The SMTP address for the group.
  final String? mail;
  /// Whether the group is mail-enabled.
  final bool? mailEnabled;
  /// The mail alias for the group, unique in the organisation.
  final String? mailNickname;
  /// List of object IDs of the group members. When `includeTransitiveMembers` is `true`, contains a list of object IDs of all transitive group members.
  final List<String>? members;
  /// The object ID of the group.
  final String? objectId;
  /// The on-premises FQDN, also called dnsDomainName, synchronised from the on-premises directory when Azure AD Connect is used.
  final String? onpremisesDomainName;
  /// The on-premises group type that the AAD group will be written as, when writeback is enabled. Possible values are `UniversalDistributionGroup`, `UniversalMailEnabledSecurityGroup`, or `UniversalSecurityGroup`.
  final String? onpremisesGroupType;
  /// The on-premises NetBIOS name, synchronised from the on-premises directory when Azure AD Connect is used.
  final String? onpremisesNetbiosName;
  /// The on-premises SAM account name, synchronised from the on-premises directory when Azure AD Connect is used.
  final String? onpremisesSamAccountName;
  /// The on-premises security identifier (SID), synchronised from the on-premises directory when Azure AD Connect is used.
  final String? onpremisesSecurityIdentifier;
  /// Whether this group is synchronised from an on-premises directory (`true`), no longer synchronised (`false`), or has never been synchronised (`null`).
  final bool? onpremisesSyncEnabled;
  /// List of object IDs of the group owners.
  final List<String>? owners;
  /// The preferred language for a Microsoft 365 group, in ISO 639-1 notation.
  final String? preferredLanguage;
  /// A list of provisioning options for a Microsoft 365 group, such as `Team`. See [official documentation](https://docs.microsoft.com/en-us/graph/group-set-options) for details.
  final List<String>? provisioningOptions;
  /// List of email addresses for the group that direct to the same group mailbox.
  final List<String>? proxyAddresses;
  /// Whether the group is a security group.
  final bool? securityEnabled;
  /// The colour theme for a Microsoft 365 group. Possible values are `Blue`, `Green`, `Orange`, `Pink`, `Purple`, `Red` or `Teal`. When no theme is set, the value is `null`.
  final String? theme;
  /// A list of group types configured for the group. Supported values are `DynamicMembership`, which denotes a group with dynamic membership, and `Unified`, which specifies a Microsoft 365 group.
  final List<String>? types;
  /// The group join policy and group content visibility. Possible values are `Private`, `Public`, or `Hiddenmembership`. Only Microsoft 365 groups can have `Hiddenmembership` visibility.
  final String? visibility;
  /// Whether the group will be written back to the configured on-premises Active Directory when Azure AD Connect is used.
  final bool? writebackEnabled;

  /// Creates a new [GetGroupResult].
  /// [assignableToRole] Indicates whether this group can be assigned to an Azure Active Directory role.
  /// [autoSubscribeNewMembers] Indicates whether new members added to the group will be auto-subscribed to receive email notifications. Only set for Unified groups.
  /// [behaviors] A list of behaviors for a Microsoft 365 group, such as `AllowOnlyMembersToPost`, `HideGroupInOutlook`, `SubscribeNewGroupMembers` and `WelcomeEmailDisabled`. See [official documentation](https://docs.microsoft.com/en-us/graph/group-set-options) for more details.
  /// [description] The optional description of the group.
  /// [displayName] The display name for the group.
  /// [dynamicMemberships] A `dynamicMembership` block as documented below.
  /// [externalSendersAllowed] Indicates whether people external to the organization can send messages to the group. Only set for Unified groups.
  /// [hideFromAddressLists] Indicates whether the group is displayed in certain parts of the Outlook user interface: in the Address Book, in address lists for selecting message recipients, and in the Browse Groups dialog for searching groups. Only set for Unified groups.
  /// [hideFromOutlookClients] Indicates whether the group is displayed in Outlook clients, such as Outlook for Windows and Outlook on the web. Only set for Unified groups.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [includeTransitiveMembers] Optional.
  /// [mail] The SMTP address for the group.
  /// [mailEnabled] Whether the group is mail-enabled.
  /// [mailNickname] The mail alias for the group, unique in the organisation.
  /// [members] List of object IDs of the group members. When `includeTransitiveMembers` is `true`, contains a list of object IDs of all transitive group members.
  /// [objectId] The object ID of the group.
  /// [onpremisesDomainName] The on-premises FQDN, also called dnsDomainName, synchronised from the on-premises directory when Azure AD Connect is used.
  /// [onpremisesGroupType] The on-premises group type that the AAD group will be written as, when writeback is enabled. Possible values are `UniversalDistributionGroup`, `UniversalMailEnabledSecurityGroup`, or `UniversalSecurityGroup`.
  /// [onpremisesNetbiosName] The on-premises NetBIOS name, synchronised from the on-premises directory when Azure AD Connect is used.
  /// [onpremisesSamAccountName] The on-premises SAM account name, synchronised from the on-premises directory when Azure AD Connect is used.
  /// [onpremisesSecurityIdentifier] The on-premises security identifier (SID), synchronised from the on-premises directory when Azure AD Connect is used.
  /// [onpremisesSyncEnabled] Whether this group is synchronised from an on-premises directory (`true`), no longer synchronised (`false`), or has never been synchronised (`null`).
  /// [owners] List of object IDs of the group owners.
  /// [preferredLanguage] The preferred language for a Microsoft 365 group, in ISO 639-1 notation.
  /// [provisioningOptions] A list of provisioning options for a Microsoft 365 group, such as `Team`. See [official documentation](https://docs.microsoft.com/en-us/graph/group-set-options) for details.
  /// [proxyAddresses] List of email addresses for the group that direct to the same group mailbox.
  /// [securityEnabled] Whether the group is a security group.
  /// [theme] The colour theme for a Microsoft 365 group. Possible values are `Blue`, `Green`, `Orange`, `Pink`, `Purple`, `Red` or `Teal`. When no theme is set, the value is `null`.
  /// [types] A list of group types configured for the group. Supported values are `DynamicMembership`, which denotes a group with dynamic membership, and `Unified`, which specifies a Microsoft 365 group.
  /// [visibility] The group join policy and group content visibility. Possible values are `Private`, `Public`, or `Hiddenmembership`. Only Microsoft 365 groups can have `Hiddenmembership` visibility.
  /// [writebackEnabled] Whether the group will be written back to the configured on-premises Active Directory when Azure AD Connect is used.
  const GetGroupResult({
    this.assignableToRole,
    this.autoSubscribeNewMembers,
    this.behaviors,
    this.description,
    this.displayName,
    this.dynamicMemberships,
    this.externalSendersAllowed,
    this.hideFromAddressLists,
    this.hideFromOutlookClients,
    this.id,
    this.includeTransitiveMembers,
    this.mail,
    this.mailEnabled,
    this.mailNickname,
    this.members,
    this.objectId,
    this.onpremisesDomainName,
    this.onpremisesGroupType,
    this.onpremisesNetbiosName,
    this.onpremisesSamAccountName,
    this.onpremisesSecurityIdentifier,
    this.onpremisesSyncEnabled,
    this.owners,
    this.preferredLanguage,
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
      'assignableToRole': ?assignableToRole,
      'autoSubscribeNewMembers': ?autoSubscribeNewMembers,
      'behaviors': ?behaviors,
      'description': ?description,
      'displayName': ?displayName,
      'dynamicMemberships': ?(() { final guardedValue = dynamicMemberships; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGroupDynamicMembership, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'externalSendersAllowed': ?externalSendersAllowed,
      'hideFromAddressLists': ?hideFromAddressLists,
      'hideFromOutlookClients': ?hideFromOutlookClients,
      'id': ?id,
      'includeTransitiveMembers': ?includeTransitiveMembers,
      'mail': ?mail,
      'mailEnabled': ?mailEnabled,
      'mailNickname': ?mailNickname,
      'members': ?members,
      'objectId': ?objectId,
      'onpremisesDomainName': ?onpremisesDomainName,
      'onpremisesGroupType': ?onpremisesGroupType,
      'onpremisesNetbiosName': ?onpremisesNetbiosName,
      'onpremisesSamAccountName': ?onpremisesSamAccountName,
      'onpremisesSecurityIdentifier': ?onpremisesSecurityIdentifier,
      'onpremisesSyncEnabled': ?onpremisesSyncEnabled,
      'owners': ?owners,
      'preferredLanguage': ?preferredLanguage,
      'provisioningOptions': ?provisioningOptions,
      'proxyAddresses': ?proxyAddresses,
      'securityEnabled': ?securityEnabled,
      'theme': ?theme,
      'types': ?types,
      'visibility': ?visibility,
      'writebackEnabled': ?writebackEnabled,
    };
  }

  factory GetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetGroupResult(
      assignableToRole: (() { final guardedValue = map['assignableToRole']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      autoSubscribeNewMembers: (() { final guardedValue = map['autoSubscribeNewMembers']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      behaviors: (() { final guardedValue = map['behaviors']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dynamicMemberships: (() { final guardedValue = map['dynamicMemberships']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGroupDynamicMembership>(guardedValue, (value) => GetGroupDynamicMembership.fromMap((value as Map).cast<String, dynamic>())); })(),
      externalSendersAllowed: (() { final guardedValue = map['externalSendersAllowed']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hideFromAddressLists: (() { final guardedValue = map['hideFromAddressLists']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hideFromOutlookClients: (() { final guardedValue = map['hideFromOutlookClients']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includeTransitiveMembers: (() { final guardedValue = map['includeTransitiveMembers']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      mail: (() { final guardedValue = map['mail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mailEnabled: (() { final guardedValue = map['mailEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      mailNickname: (() { final guardedValue = map['mailNickname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      onpremisesDomainName: (() { final guardedValue = map['onpremisesDomainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      onpremisesGroupType: (() { final guardedValue = map['onpremisesGroupType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      onpremisesNetbiosName: (() { final guardedValue = map['onpremisesNetbiosName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      onpremisesSamAccountName: (() { final guardedValue = map['onpremisesSamAccountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      onpremisesSecurityIdentifier: (() { final guardedValue = map['onpremisesSecurityIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      onpremisesSyncEnabled: (() { final guardedValue = map['onpremisesSyncEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      owners: (() { final guardedValue = map['owners']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      preferredLanguage: (() { final guardedValue = map['preferredLanguage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningOptions: (() { final guardedValue = map['provisioningOptions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      proxyAddresses: (() { final guardedValue = map['proxyAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      securityEnabled: (() { final guardedValue = map['securityEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      theme: (() { final guardedValue = map['theme']; if (guardedValue == null) return null; return guardedValue as String; })(),
      types: (() { final guardedValue = map['types']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return guardedValue as String; })(),
      writebackEnabled: (() { final guardedValue = map['writebackEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
