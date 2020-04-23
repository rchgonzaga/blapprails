# frozen_string_literal: true

# ----------------------DOCUMNENT_TYPES-------------------------------
cpf = DocumentType.create(description: 'CPF')
cpf.save
cnpf = DocumentType.create(description: 'CNPJ')
cnpf.save
rg = DocumentType.create(description: 'RG')
rg.save

# ----------------------USERS-------------------------------
rafael_user = User.create(
  name: 'Freddie Mercury',
  email: 'freddie@mercury.com',
  password: '123456',
  password_confirmation: '123456'
)
rafael_user.save

# ----------------------OWNERS-------------------------------
rafael = Owner.create(
  fistName: 'Rafael',
  lastName: 'Gonzaga',
  documentNumber: '123412',
  document_type: cpf
)
rafael.save

jorge = Owner.create(
  fistName: 'Jorge',
  lastName: 'Gonzaga',
  documentNumber: '3123',
  document_type: cnpf
)
jorge.save

juleska = Owner.create(
  fistName: 'Juleska',
  lastName: 'Gonzaga',
  documentNumber: '543543',
  document_type: rg
)
juleska.save

# ----------------------FARMS-------------------------------
rafael_farm = rafael_user.farms.create(name: 'FarmOne', size: 1540.44)
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

# ----------------------USERS-ROLES-PERMISSIONS-------------------------------
# --
admin_role = Role.create(role_name: 'validate_order', role_description: 'Validate order role', is_active: true)
admin_role.save

customer_role = Role.create(role_name: 'create_order', role_description: 'Create order role', is_active: true)
customer_role.save

clevel_role = Role.create(role_name: 'approve_order', role_description: 'Approve order role', is_active: true)
clevel_role.save
# --

# --
rafael_user_admin = rafael_user.role_users.create(role: admin_role)
rafael_user_admin.save
# --

# --
basic_users_group = Group.create(name: 'basic', description: 'Basic name', is_active: true)
basic_users_group.save

managers_users_group = Group.create(name: 'manager_name', description: 'Manager name', is_active: true)
managers_users_group.save

c_level_user_group = Group.create(name: 'clevel_name', description: 'CLevel name', is_active: true)
c_level_user_group.save
# --
