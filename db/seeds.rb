
# ----------------------DOCUMNENT_TYPES-------------------------------
cpf = DocumentType.create(description: "CPF")
cpf.save
cnpf = DocumentType.create(description: "CNPJ")
cnpf.save
rg = DocumentType.create(description: "RG")
rg.save

# ----------------------USERS-------------------------------
rafael_user = User.create(
  name: "Freddie Mercury", 
  email: "freddie@mercury.com", 
  password: "123456", 
  password_confirmation: "123456"
)
rafael_user.save

# ----------------------OWNERS-------------------------------
rafael = Owner.create(
  fistName: "Rafael", 
  lastName: "Gonzaga", 
  documentNumber: "123412",
  document_type: cpf
)
rafael.save

jorge = Owner.create(
  fistName: "Jorge", 
  lastName: "Gonzaga", 
  documentNumber: "3123",
  document_type: cnpf
)
jorge.save

juleska = Owner.create(
  fistName: "Juleska", 
  lastName: "Gonzaga", 
  documentNumber: "543543",
  document_type: rg
)
juleska.save
# ----------------------FARMS-------------------------------
rafael_farm = rafael_user.farms.create(name: "FarmOne",size: 1540.44)
rafael_farm.save

rafael_has = FarmHasOwner.create(
  owner: rafael,
  farm: rafael_farm,
  percentage: 50
)
rafael_has.save

jorge_has = FarmHasOwner.create(
  owner: jorge,
  farm: rafael_farm,
  percentage: 50
)
jorge_has.save