class UserModel {
  bool? success;
  String? message;
  Data? data;
  String? token;
  String? refresh;

  UserModel({this.success, this.message, this.data, this.token, this.refresh});

  UserModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    token = json['token'];
    refresh = json['refresh'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['token'] = this.token;
    data['refresh'] = this.refresh;
    return data;
  }
}

class Data {
  String? userId;
  String? userName;
  int? levelId;
  Null? userMail;
  String? branchId;
  String? levelName;
  Null? userMenu;
  int? storeId;
  String? storeName;
  String? storeAddress;
  String? storePhone;
  int? flagStore;
  Null? storeTaxId;
  Null? pkpDate;
  int? isPkp;
  Null? ledgerDate;
  int? allowMinusTransaction;
  Null? lastAllowedDate;
  int? printSizeDefault;
  String? taxRatio;
  Null? validUntil;

  Data(
      {this.userId,
      this.userName,
      this.levelId,
      this.userMail,
      this.branchId,
      this.levelName,
      this.userMenu,
      this.storeId,
      this.storeName,
      this.storeAddress,
      this.storePhone,
      this.flagStore,
      this.storeTaxId,
      this.pkpDate,
      this.isPkp,
      this.ledgerDate,
      this.allowMinusTransaction,
      this.lastAllowedDate,
      this.printSizeDefault,
      this.taxRatio,
      this.validUntil});

  Data.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    userName = json['user_name'];
    levelId = json['level_id'];
    userMail = json['user_mail'];
    branchId = json['branch_id'];
    levelName = json['level_name'];
    userMenu = json['user_menu'];
    storeId = json['store_id'];
    storeName = json['store_name'];
    storeAddress = json['store_address'];
    storePhone = json['store_phone'];
    flagStore = json['flag_store'];
    storeTaxId = json['store_tax_id'];
    pkpDate = json['pkp_date'];
    isPkp = json['is_pkp'];
    ledgerDate = json['ledger_date'];
    allowMinusTransaction = json['allow_minus_transaction'];
    lastAllowedDate = json['last_allowed_date'];
    printSizeDefault = json['print_size_default'];
    taxRatio = json['tax_ratio'];
    validUntil = json['valid_until'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['user_name'] = this.userName;
    data['level_id'] = this.levelId;
    data['user_mail'] = this.userMail;
    data['branch_id'] = this.branchId;
    data['level_name'] = this.levelName;
    data['user_menu'] = this.userMenu;
    data['store_id'] = this.storeId;
    data['store_name'] = this.storeName;
    data['store_address'] = this.storeAddress;
    data['store_phone'] = this.storePhone;
    data['flag_store'] = this.flagStore;
    data['store_tax_id'] = this.storeTaxId;
    data['pkp_date'] = this.pkpDate;
    data['is_pkp'] = this.isPkp;
    data['ledger_date'] = this.ledgerDate;
    data['allow_minus_transaction'] = this.allowMinusTransaction;
    data['last_allowed_date'] = this.lastAllowedDate;
    data['print_size_default'] = this.printSizeDefault;
    data['tax_ratio'] = this.taxRatio;
    data['valid_until'] = this.validUntil;
    return data;
  }
}
