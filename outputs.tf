output "generated_pet_name" {
  description = "The random pet name generated"
  value       = random_pet.pet_name.id
}

output "file_name" {
  description = "Name of the generated file"
  value       = local_file.generated_file.filename
}