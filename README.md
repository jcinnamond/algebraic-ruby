# General Algebra and Ruby

## Outline

### The math bit

* A recap of elementary algebra
* Introduction to algebraic structures: functions of sets
* Definition of a group: closure, associability, identity, invertability
* Examples of groups: integers under addition; integers under multiplication; concatination of strings; joining lists
* Examples of non-groups: integers under division; length of a list; odd numbers under addition
* Introduction of magmas, semi-groups, & monoids

### The programming bit - generating JSON

* Joining hashes
** As a monoid
** As a group (need to add invertability)
* Combining serializers

### Additional challenges

* Combining conditional serializers

Re-implement this as a group:

```ruby
def serialize(current_user, permissions, data)
  output = {
    user: data.user
  }

  if data.user == current_user
    output.merge!(
	  contact_details: data.contact_details
	)
  end

  if permissions.can_see_billing?
    output.merge!(
	  billing_details: data.billing_details
	)
  end

  output
end
```

* Implement semi-groups in general

Need to implement this method:

```ruby
def *(other)
  # join this object to 'other'
end
```

* Implement monoids in general

How does identity work?

* Implement groups in general

How does invertability work?
