// ignore_for_file: dead_code

class ProductResp {
  List<Items>? items;
  int? count;
  int? limit;
  int? offset;
  int? total;

  ProductResp({this.items, this.count, this.limit, this.offset, this.total});

  ProductResp.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
    count = json['count'];
    limit = json['limit'];
    offset = json['offset'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    // ignore: unnecessary_this
    if (this.items != null) {
      // ignore: unnecessary_this
      data['items'] = this.items?.map((v) => v.toJson()).toList();
    }
    // ignore: unnecessary_this
    if (this.count != null) {
      // ignore: unnecessary_this
      data['count'] = this.count;
    }
    // ignore: unnecessary_this
    if (this.limit != null) {
      // ignore: unnecessary_this
      data['limit'] = this.limit;
    }
    // ignore: unnecessary_this
    if (this.offset != null) {
      // ignore: unnecessary_this
      data['offset'] = this.offset;
    }
    // ignore: unnecessary_this
    if (this.total != null) {
      // ignore: unnecessary_this
      data['total'] = this.total;
    }
    return data;
  }
}

class Items {
  bool? bArchived;
  bool? bDraft;
  String? price;
  String? weight;
  String? name;
  Image? image;
  String? slug;
  String? categoryid;
  String? updatedOn;
  String? updatedBy;
  String? createdOn;
  String? createdBy;
  // ignore: prefer_void_to_null
  Null publishedOn;
  // ignore: prefer_void_to_null
  Null publishedBy;
  String? sCid;
  String? sId;
  String? description;

  Items(
      {this.bArchived,
      this.bDraft,
      this.price,
      this.weight,
      this.name,
      this.image,
      this.slug,
      this.categoryid,
      this.updatedOn,
      this.updatedBy,
      this.createdOn,
      this.createdBy,
      this.publishedOn,
      this.publishedBy,
      this.sCid,
      this.sId,
      this.description});

  Items.fromJson(Map<String, dynamic> json) {
    bArchived = json['_archived'];
    bDraft = json['_draft'];
    price = json['price'];
    weight = json['weight'];
    name = json['name'];
    image = json['image'] != null ? Image.fromJson(json['image']) : null;
    slug = json['slug'];
    categoryid = json['categoryid'];
    updatedOn = json['updated-on'];
    updatedBy = json['updated-by'];
    createdOn = json['created-on'];
    createdBy = json['created-by'];
    publishedOn = json['published-on'];
    publishedBy = json['published-by'];
    sCid = json['_cid'];
    sId = json['_id'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    // ignore: unnecessary_this
    if (this.bArchived != null) {
      // ignore: unnecessary_this
      data['_archived'] = this.bArchived;
    }
    // ignore: unnecessary_this
    if (this.bDraft != null) {
      // ignore: unnecessary_this
      data['_draft'] = this.bDraft;
    }
    // ignore: unnecessary_this
    if (this.price != null) {
      // ignore: unnecessary_this
      data['price'] = this.price;
    }
    // ignore: unnecessary_this
    if (this.weight != null) {
      // ignore: unnecessary_this
      data['weight'] = this.weight;
    }
    // ignore: unnecessary_this
    if (this.name != null) {
      // ignore: unnecessary_this
      data['name'] = this.name;
    }
    // ignore: unnecessary_this
    if (this.image != null) {
      // ignore: unnecessary_this
      data['image'] = this.image?.toJson();
    }
    // ignore: unnecessary_this
    if (this.slug != null) {
      // ignore: unnecessary_this
      data['slug'] = this.slug;
    }
    // ignore: unnecessary_this
    if (this.categoryid != null) {
      // ignore: unnecessary_this
      data['categoryid'] = this.categoryid;
    }
    // ignore: unnecessary_this
    if (this.updatedOn != null) {
      // ignore: unnecessary_this
      data['updated-on'] = this.updatedOn;
    }
    // ignore: unnecessary_this
    if (this.updatedBy != null) {
      // ignore: unnecessary_this
      data['updated-by'] = this.updatedBy;
    }
    // ignore: unnecessary_this
    if (this.createdOn != null) {
      // ignore: unnecessary_this
      data['created-on'] = this.createdOn;
    }
    // ignore: unnecessary_this
    if (this.createdBy != null) {
      // ignore: unnecessary_this
      data['created-by'] = this.createdBy;
    }
    // ignore: unnecessary_this
    if (this.publishedOn != null) {
      // ignore: unnecessary_this
      data['published-on'] = this.publishedOn;
    }
    // ignore: unnecessary_this
    if (this.publishedBy != null) {
      // ignore: unnecessary_this
      data['published-by'] = this.publishedBy;
    }
    // ignore: unnecessary_this
    if (this.sCid != null) {
      // ignore: unnecessary_this
      data['_cid'] = this.sCid;
    }
    // ignore: unnecessary_this
    if (this.sId != null) {
      // ignore: unnecessary_this
      data['_id'] = this.sId;
    }
    // ignore: unnecessary_this
    if (this.description != null) {
      // ignore: unnecessary_this
      data['description'] = this.description;
    }
    return data;
  }
}

class Image {
  String? fileId;
  String? url;
  // ignore: prefer_void_to_null
  Null alt;

  Image({this.fileId, this.url, this.alt});

  Image.fromJson(Map<String, dynamic> json) {
    fileId = json['fileId'];
    url = json['url'];
    alt = json['alt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    // ignore: unnecessary_this
    if (this.fileId != null) {
      // ignore: unnecessary_this
      data['fileId'] = this.fileId;
    }
    // ignore: unnecessary_this
    if (this.url != null) {
      // ignore: unnecessary_this
      data['url'] = this.url;
    }
    // ignore: unnecessary_this
    if (this.alt != null) {
      // ignore: unnecessary_this
      data['alt'] = this.alt;
    }
    return data;
  }
}
