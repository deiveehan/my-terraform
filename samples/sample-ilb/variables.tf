/**
 * Copyright 2019 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "region" {
  description = "Region for cloud resources."
  type        = string
  default     = "us-central1"
}

variable "network" {
  description = "Name of the network to create resources in."
  type        = string
  default     = "ctrl-space-dev"
}

variable "subnetwork" {
  description = "Name of the subnetwork to create resources in."
  type        = string
  default     = "ctrl-space-dev"
}


variable "subnetwork_project" {
  description = "Name of the project for the subnetwork. Useful for shared VPC."
  type        = string
  default     = "ctrl-space-dev"
}

variable "project" {
  description = "The project id to deploy to"
  type        = string
  default     = "ctrl-space-projects"
}
