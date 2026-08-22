CREATE TABLE IF NOT EXISTS deleteds (
    id
    entity_id
    entity_type --product
    deleted_by
    deleted_at
)

CREATE TABLE IF NOT EXISTS updates (
    id
    entity_id
    entity_type --product
    updated_by
    updated_at
    old_entity JSONB
)

CREATE TABLE IF NOT EXISTS creates (
    id
    entity_id
    entity_type --product
    created_by
    created_at
)

CREATE TABLE IF NOT EXISTS products (
    id
    name
    description
    short_description
    width
    height
    depth
    weight
    quantity_type --pkg or unit
)

CREATE TABLE IF NOT EXISTS purchase_order (
    id
    product_id
    price
    discount
    status --canceled, approved
)

CREATE TABLE IF NOT EXISTS shopping (
    id
    product_id
)

CREATE TABLE IF NOT EXISTS stock (
    id
    product_id
)