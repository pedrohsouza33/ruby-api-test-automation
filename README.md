[README (1).md](https://github.com/user-attachments/files/34876803/README.1.md)
# REST API Test Automation

A Ruby-based REST API testing framework using HTTParty, Cucumber, RSpec and Faker. The project focuses on automating employee management API operations, validating HTTP responses and building reusable test components.

## Tech Stack

| Tool | Purpose |
| --- | --- |
| Ruby | Automation scripts |
| HTTParty | HTTP requests and API interactions |
| Cucumber / Gherkin | BDD scenarios and execution |
| RSpec Expectations | Response assertions |
| Faker | Dynamic test data generation |
| Postman | Manual API exploration and request validation |
| Git / GitHub | Version control |

## API Test Coverage

The project targets the public [Dummy REST API Example](https://dummy.restapiexample.com/) employee API.

| Method | Endpoint | Test objective |
| --- | --- | --- |
| GET | `/employees` | Retrieve employee information |
| POST | `/create` | Create an employee and validate returned data |
| PUT | `/update/{id}` | Update employee information and validate the response |
| DELETE | `/delete/{id}` | Delete an employee and validate the response |

Base URL: `https://dummy.restapiexample.com/api/v1`

Validation includes HTTP status codes, response messages, JSON fields and employee data. The framework supports predefined test data and dynamically generated names, salaries and ages.

## Architecture

```text
features/
  bdd/                 # Gherkin scenarios
  step_definitions/    # Test execution and validation
  requests/            # Reusable API request methods
```

Additional reusable components include:

- **Employee module:** base URL and shared HTTP configuration.
- **Employee_Requests:** centralized CRUD request methods.
- **Assertions:** shared HTTP response validation.
- **DATABASE:** predefined test data.
- **Faker:** dynamic test data generation.

This separation of responsibilities reduces duplication and makes the framework easier to maintain and extend.

## Getting Started

### Prerequisites

- Ruby and the required gems: HTTParty, Cucumber, RSpec Expectations and Faker.

Install dependencies from the repository root if a Gemfile is available:

```bash
bundle install
```

Run the test suite:

```bash
cucumber --publish-quiet
```

Run a tagged scenario (replace the tag with the desired scenario):

```bash
cucumber -t "@cenario3" --publish-quiet
```

Generate an HTML report:

```bash
cucumber --format html --out report.html --publish-quiet
```

## Example Request

```ruby
@create_employee = @create.create_employee(@name, @salary, @age)
```

Example validation:

```ruby
@assert.request_success(@create_employee.code, @create_employee.message)
expect(@create_employee['data']['employee_name']).to eql(@name)
expect(@create_employee['data']['employee_salary']).to eql(@salary)
expect(@create_employee['data']['employee_age']).to eql(@age)
```

## Known Limitations

The public API occasionally returns HTTP `429 Too Many Requests` and HTML error responses. These external limitations may cause test failures independently of the automation code. Status codes, response bodies and headers can be inspected to diagnose such failures. Successful responses from this demo API do not establish durable data persistence.

## Skills Demonstrated

REST API testing, CRUD operations, HTTP and JSON validation, BDD, reusable request and assertion layers, test data management, object-oriented programming and HTTP debugging.

## Author

**Pedro Henrique de Freitas Souza**

[GitHub](https://github.com/pedrohsouza33) · [LinkedIn](https://www.linkedin.com/in/pedrohfreitassouza/)
