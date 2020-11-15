# coding: utf-8

User.create!(username: "Sample User",
  email: "sample@email.com",
  password: "password",
  password_confirmation: "password",
  admin: true)

User.create!(username: "Sample User1",
  email: "sample1@email.com",
  password: "password",
  password_confirmation: "password",
  admin: false)